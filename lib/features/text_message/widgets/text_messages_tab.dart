import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sms_tool/core/core.dart';
import 'package:sms_tool/core/ui/widgets/sms_progress_indicator.dart';
import 'package:sms_tool/features/text_message/models/text_message.dart';
import 'package:sms_tool/features/text_message/text_message_repo.dart';
import 'package:sms_tool/features/text_message/text_message_sms_provider.dart';
import 'package:sms_tool/features/text_message/widgets/custom_selectable_tag.dart';
import 'package:sms_tool/features/text_message/widgets/text_message_list.dart';

// TODO: Refacor shared code

class MessagesTab extends HookConsumerWidget {
  const MessagesTab({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSelections = useState<Set<String>>({});
    final msgCollapsed = useState(true);
    final ctxTheme = Theme.of(context);
    final storeTextMessages = ref.watch(textMessagesRepoProvider);
    final msgsData = storeTextMessages.asData?.value ?? [];
    final tags = useMemoized(
        () => Set<String>.from(
            msgsData.expand<String>((i) => (i.msgTags ?? [])).toList()),
        [msgsData]);

    final selectedTags = useState<Set<String>>({});

    final List<TextMessage> messages = useMemoized(
        () => selectedTags.value.isEmpty
            ? msgsData
            : msgsData
                .where((i) => (i.msgTags ?? [])
                    .any((element) => selectedTags.value.contains(element)))
                .toList(),
        [selectedTags.value, msgsData]);

    useEffect(() {
      if (tags.isEmpty) {
        selectedTags.value = {};
      }

      return null;
    }, [tags]);

    final checkboxState = textSelections.value.isEmpty
        ? false
        : textSelections.value.length ==
                (storeTextMessages.asData?.value.length ?? -1)
            ? true
            : null;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Text Messages', style: ctxTheme.textTheme.headlineSmall),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: checkboxState,
                        tristate: true,
                        onChanged: messages.isEmpty
                            ? null
                            : (_) {
                                textSelections.value = switch (checkboxState) {
                                  false => Set<String>.from(
                                      (messages).map((e) => e.id)),
                                  _ => {},
                                };
                              },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      const SizedBox(width: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('Select all'),
                          const SizedBox(width: 10),
                          Text(
                              '[${textSelections.value.length}/${messages.length} selected]',
                              style: ctxTheme.textTheme.labelSmall)
                        ],
                      )
                    ],
                  ),
                  ElevatedButton.icon(
                      onPressed: storeTextMessages.isLoading
                          ? null
                          : () async {
                              textSelections.value = {};
                              ref
                                  .read(textMessagesRepoProvider.notifier)
                                  .fetchMessages();
                            },
                      icon: const Icon(Icons.cloud_download_outlined, size: 18),
                      label: const Text('Get')),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        ElevatedButton.icon(
                            onPressed: textSelections.value.isEmpty
                                ? null
                                : () async {
                                    final selectedMessages =
                                        (storeTextMessages.asData?.value ?? [])
                                            .where((i) => textSelections.value
                                                .contains(i.id))
                                            .toList();

                                    final successIds = await ref
                                        .read(textMessageSmsGatewayProvider
                                            .notifier)
                                        .sendMessages(selectedMessages);

                                    final curSelections =
                                        Set<String>.from(textSelections.value);

                                    curSelections.removeAll(
                                        Set<String>.from(successIds));

                                    textSelections.value = curSelections;

                                    ref
                                        .read(textMessagesRepoProvider.notifier)
                                        .deleteMessages(successIds);
                                  },
                            icon: const Icon(Icons.send, size: 16),
                            label: Text('Send',
                                style: ctxTheme.textTheme.labelMedium)),
                        const SizedBox(width: 10),
                        ElevatedButton.icon(
                            onPressed: textSelections.value.isEmpty
                                ? null
                                : () async {
                                    await showDialog<bool>(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text('Confirm Delete'),
                                        content: const Text(
                                            'Are you sure you want to delete these items?'),
                                        actions: [
                                          TextButton(
                                            child: const Text('Cancel'),
                                            onPressed: () =>
                                                Navigator.of(context)
                                                    .pop(false),
                                          ),
                                          TextButton(
                                            child: const Text('Delete'),
                                            onPressed: () async {
                                              Navigator.of(context).pop(true);
                                              await ref
                                                  .read(textMessagesRepoProvider
                                                      .notifier)
                                                  .deleteMessages(textSelections
                                                      .value
                                                      .toList());
                                              textSelections.value = {};
                                              alertMessage(
                                                  'Deleted successfully');
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                            icon: Icon(Icons.delete_outlined,
                                size: 16, color: ctxTheme.colorScheme.onError),
                            label: Text('Delete',
                                style: ctxTheme.textTheme.labelMedium?.copyWith(
                                    color: ctxTheme.colorScheme.onError)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ctxTheme.colorScheme.error)),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        msgCollapsed.value = !msgCollapsed.value;
                      },
                      icon: Icon(msgCollapsed.value
                          ? Icons.unfold_more
                          : Icons.unfold_less)),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: selectedTags.value.isEmpty
                                ? Colors.transparent
                                : ctxTheme.colorScheme.primary,
                            width: selectedTags.value.isEmpty ? 0 : 1)),
                  ),
                  child: Row(
                    children: tags
                        .map((tag) => CustomSelectableTag(
                            label: tag,
                            active: selectedTags.value.contains(tag),
                            onTap: () {
                              final curSelections =
                                  Set<String>.from(selectedTags.value);
                              curSelections.contains(tag)
                                  ? curSelections.remove(tag)
                                  : curSelections.add(tag);

                              selectedTags.value = curSelections;
                            }))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                  child: TextMessageMessageList(
                textMessageSelections: textSelections.value,
                onToggle: (id) {
                  final curState = Set<String>.from(textSelections.value);

                  curState.contains(id)
                      ? curState.remove(id)
                      : curState.add(id);

                  textSelections.value = curState;
                },
                msgCollapsed: msgCollapsed.value,
                messages: messages,
              )),
            ],
          ),
        ),
        Consumer(builder: (context, ref, _) {
          final smsState = ref.watch(textMessageSmsGatewayProvider);

          return SmsProgressIndicator(
            selections: textSelections.value.length,
            smsState: smsState,
            onDone: () =>
                ref.read(textMessageSmsGatewayProvider.notifier).clearSending(),
          );
        })
      ],
    );
  }
}
