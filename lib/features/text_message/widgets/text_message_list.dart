import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/features/text_message/models/text_message.dart';
import 'package:sms_tool/features/text_message/text_message_repo.dart';
import 'package:sms_tool/features/text_message/widgets/custom_tag.dart';

class TextMessageMessageList extends ConsumerWidget {
  final Set<String> textMessageSelections;
  final Function(String) onToggle;
  final bool msgCollapsed;

  const TextMessageMessageList({
    super.key,
    required this.textMessageSelections,
    required this.onToggle,
    required this.msgCollapsed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textMessages = ref.watch(textMessagesRepoProvider);
    debugPrint(textMessages.asData?.value.length.toString());

    return textMessages.when(
        data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => TextMessageItem(
                message: data[index],
                textMessageSelections: textMessageSelections,
                onToggle: onToggle,
                isSelected: textMessageSelections.contains(data[index].id),
                msgCollapsed: msgCollapsed,
              ),
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Text(err.toString()));
  }
}

class TextMessageItem extends StatelessWidget {
  final TextMessage message;
  final Set<String> textMessageSelections;
  final Function(String) onToggle;
  final bool isSelected;
  final bool msgCollapsed;

  const TextMessageItem({
    super.key,
    required this.message,
    required this.textMessageSelections,
    required this.onToggle,
    required this.isSelected,
    required this.msgCollapsed,
  });

  @override
  Widget build(BuildContext context) {
    final ctxTheme = Theme.of(context);

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: () {
              onToggle(message.id);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  value: isSelected,
                  onChanged: null,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.message,
                          maxLines: msgCollapsed ? 2 : null,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: (message.msgTags ?? [])
                              .map((label) => CustomTag(label: label))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(right: 5.0, bottom: 5.0),
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, bottom: 4.0, top: 2.0),
            decoration: BoxDecoration(
              color: ctxTheme.colorScheme.primaryContainer,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Text(message.msgType,
                style: ctxTheme.textTheme.labelSmall?.copyWith(
                  color: ctxTheme.colorScheme.onPrimaryContainer,
                )),
          ),
        ),
      ],
    );
  }
}
