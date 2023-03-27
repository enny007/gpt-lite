import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  late ThemeMode theme;
  ThemeMode getTheme() => theme;

  // Future<String> init(String key) async {
  //   final theme = await getTheme(key);
  //  return theme = ThemeMode.values[theme];
  // }

  //save ThemeMode
  Future<bool> saveMode(String key, String value) async {
    final instance = await SharedPreferences.getInstance();
    return instance.setString(key, value);
  }

  //read current theme mode
  Future<String> readMode(String key) async {
    final instance = await SharedPreferences.getInstance();
    String? value = instance.getString(key);
    return value ?? '';
  }

  //get theme mode
  Future<ThemeMode> getMode() async {
    final theme = await readMode('appTheme');
    if (theme == '') {
      return ThemeMode.system;
    } else if (theme == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }
}
