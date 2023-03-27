import 'package:flutter/material.dart';
import 'package:flutter_ai/core/presentation/chat_screen.dart';
import 'package:flutter_ai/core/shared/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: cardColor,
      ),
      // themeMode: ref.watch(themeProvider),
      home: const ChatScreen(),
    );
  }
}
