import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAppSetting extends ChangeNotifier {
  static const darkModePreferenceKey = 'DARK_MODE';
  static const searchHistoryPreferenceKey = 'SEARCH_HISTORY';
  static const bookmarkedRoutesPreferenceKey = 'BOOKMARKED_ROUTES';

  final SharedPreferences _pref;
  MyAppSetting(this._pref);
  bool get isDarkMode => this._pref?.getBool(darkModePreferenceKey) ?? false;
}
