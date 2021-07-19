import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedRrefs = await SharedPreferences.getInstance();
  
}
