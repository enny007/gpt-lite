// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_ai/core/infrastructure/open_ai.dart';
import 'package:flutter_ai/core/presentation/bottom_sheet_service/services.dart';
import 'package:flutter_ai/core/presentation/components/chat_widget.dart';
import 'package:flutter_ai/core/presentation/components/text_widget.dart';
import 'package:flutter_ai/core/presentation/snackbar/snackbar.dart';
import 'package:flutter_ai/core/shared/assets_manager.dart';
import 'package:flutter_ai/core/shared/constants.dart';
import 'package:flutter_ai/core/shared/providers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatScreen extends StatefulHookConsumerWidget {
  const ChatScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final themes = [
    ThemeMode.dark,
    ThemeMode.light,
    ThemeMode.system,
  ];
  bool _isTyping = false;
  // List<ChatModel> chatList = [];
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    final focusNode = useFocusNode();
    final listScrollController = useScrollController();
    final modelId = ref.watch(modelNotifier.notifier).state.currentModel;
    final chatList = ref.watch(chatNotifierProvider.notifier);
    void scrollListener() {
      listScrollController.animateTo(
        listScrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 2),
        curve: Curves.easeOut,
      );
    }

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: cardColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.openAiPath),
        ),
        title: const Text('ChatGPT'),
        actions: [
          IconButton(
            onPressed: () async {
              await Services.showModalSheet(context);
            },
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Flexible(
              child: ListView.builder(
                  controller: listScrollController,
                  itemCount: chatList.state.length,
                  itemBuilder: (context, i) {
                    return ChatWidget(
                      msg: chatList.state[i].msg,
                      chatIndex: chatList.state[i].chatIndex,
                    );
                  }),
            ),
            const Gap(15),
            if (_isTyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 15,
              ),
            ],
            Material(
              color: cardColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        focusNode: focusNode,
                        controller: textEditingController,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'How can I help you',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        if (_isTyping) {
                          showSnackBar(
                            context: context,
                            label: 'You can not send multiple requests',
                          );
                          return;
                        }
                        if (textEditingController.text.isEmpty) {
                          showSnackBar(
                            context: context,
                            label: 'Please type a message',
                          );
                          return;
                        }
                        try {
                          String msg = textEditingController.text;
                          setState(() {
                            _isTyping = true;
                            //show the AI's row
                            chatList.addUserMessage(
                              msg: msg,
                            );
                            textEditingController.clear();
                            focusNode.unfocus();
                          });
                          chatList.state.addAll(
                            await OpenAi().sendMessage(
                              modelId: modelId,
                              message: msg,
                            ),
                          );
                          setState(() {});
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: TextWidget(
                                label: e.toString(),
                              ),
                              backgroundColor:
                                  Theme.of(context).colorScheme.error,
                            ),
                          );
                        } finally {
                          scrollListener();
                          setState(() {
                            _isTyping = false;
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  // Future<void> sendMesage({
  //   required String modelId,
  //   required TextEditingController textEditingController,
  // }) async {
  //   try {
  //     setState(() {
  //       _isTyping = true;
  //       chatList.add(
  //         ChatModel(msg: textEditingController.text, chatIndex: 0),
  //       );
  //       textEditingController.clear();
  //       //focusNode
  //     });
  //     chatList.addAll(await OpenAi().sendMessage(
  //       modelId: modelId,
  //       message: textEditingController.text,
  //     ));
  //     setState(() {});
  //   } catch (e) {
  //     e.toString();
  //   } finally {
  //     setState(() {
  //       _isTyping = false;
  //     });
  //   }
  // }
}
