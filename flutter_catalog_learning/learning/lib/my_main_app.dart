import 'package:flutter/material.dart';
import 'package:learning/my_app_setting.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'themes.dart';
class MyMainApp extends StatelessWidget {
  final SharedPreferences sharedPref;
  const MyMainApp(this.sharedPref, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyAppSetting>.value(
      value: MyAppSetting(this.sharedPref),
      child: _MyMaterialApp(),
    );
  }
}

class _MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My flutter app',
      theme: Provider.of<MyAppSetting>(context).isDarkMode?
        darkTheme:
        lightTheme
      ,
    );
  }
}
