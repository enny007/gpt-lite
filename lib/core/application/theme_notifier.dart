// import 'package:flutter/material.dart';
// import 'package:flutter_ai/core/infrastructure/theme_preference.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final ThemePreferences _preferences = ThemePreferences();

// class ThemeNotifier extends StateNotifier<ThemeMode> {
//   ThemeNotifier() : super(ThemeMode.system) {
//     getSavedTheme();
//   }

//   Future<void> getSavedTheme() async {
//     String theme = await _preferences.readMode('appTheme');
//     state = theme == 'dark' ? ThemeMode.dark : ThemeMode.light;
//     // state = mode;
//   }

//   //notifier logic to set the darkTheme
//   void setDarkTheme() async {
//     await _preferences.saveMode('appTheme', 'dark');
//     state = ThemeMode.dark;
//     print('1');
//   }

//   //notifier logic to set the lightTheme
//   void setLightTheme() async {
//     await _preferences.saveMode('appTheme', 'light');
//     state = ThemeMode.light;
//     print('2');
//   }

//   //notifier logic to set the system default theme
//   void setsystemTheme() async {
//     await _preferences.saveMode('appTheme', '');
//     state = ThemeMode.system;
//     print('3');
//   }
// }

// final themeProvider =
//     StateNotifierProvider.autoDispose<ThemeNotifier, ThemeMode>((ref) {
//   return ThemeNotifier();
// });
