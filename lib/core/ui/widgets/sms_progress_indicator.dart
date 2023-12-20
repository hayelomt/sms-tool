import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/core/ui/widgets/circular_progress.dart';
import 'package:sms_tool/features/attendance/models/sms_state.dart';

class SmsProgressIndicator extends ConsumerWidget {
  const SmsProgressIndicator({
    super.key,
    required this.selections,
    required this.smsState,
    required this.onDone,
  });

  final SmsState smsState;
  final int selections;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalSent = smsState.successIds.length + smsState.failIds.length;
    final ctxTheme = Theme.of(context);

    return smsState.sending
        ? Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
                decoration: BoxDecoration(color: Colors.black38.withAlpha(150)),
                clipBehavior: Clip.hardEdge,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: ctxTheme.colorScheme.background,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Message sending ${smsState.finished == true ? 'finished' : 'in progress'}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        Center(
                          child: CircularProgress(
                            curItemIndex: totalSent,
                            totalItems: selections,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Chip(
                              // padding: EdgeInsets.zero,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              label: Row(
                                children: [
                                  const Icon(Icons.check_circle,
                                      color: Colors.green, size: 14),
                                  const SizedBox(width: 5),
                                  Text(
                                      '${smsState.successIds.length} succeeded',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                              color: ctxTheme
                                                  .colorScheme.onPrimary)),
                                ],
                              ),
                              backgroundColor: ctxTheme.colorScheme.primary,
                              visualDensity: VisualDensity.compact,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            const SizedBox(height: 10),
                            Chip(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              label: Row(
                                children: [
                                  const Icon(Icons.error,
                                      color: Colors.red, size: 14),
                                  const SizedBox(width: 5),
                                  Text('${smsState.failIds.length} failed',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                              color: ctxTheme
                                                  .colorScheme.onError)),
                                ],
                              ),
                              backgroundColor: ctxTheme.colorScheme.error,
                              visualDensity: VisualDensity.compact,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        if (smsState.finished)
                          Center(
                            child: ElevatedButton(
                                onPressed: onDone, child: const Text('Done')),
                          )
                      ],
                    ),
                  ),
                )),
          )
        : Container();
  }
}
