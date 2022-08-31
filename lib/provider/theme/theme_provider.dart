// import 'package:devfolio/provider/theme/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class ThemeProvider with ChangeNotifier {
//   late ThemeData _selectedTheme;
//   late SharedPreferences prefs;
//
//   ThemeProvider({bool isDark = false}) {
//     this._selectedTheme = isDark ? darkTheme : lightTheme;
//   }
//
//   ThemeData get getTheme => _selectedTheme;
//   bool get isDark =>  _selectedTheme == darkTheme;
//
//   Future<void> changeTheme() async {
//     prefs = await SharedPreferences.getInstance();
//
//     if (_selectedTheme == darkTheme) {
//       _selectedTheme = lightTheme;
//       await prefs.setBool('isDark', false);
//     } else {
//       _selectedTheme = darkTheme;
//       await prefs.setBool('isDark', true);
//     }
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;
  bool get isDark => _themeMode == ThemeMode.dark;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
