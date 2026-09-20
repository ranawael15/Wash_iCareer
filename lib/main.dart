import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wash_icareer/core/di/service_locator.dart';
import 'package:wash_icareer/wash_app.dart';

String? token;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  token = prefs.getString('token');
  await setupGetIt();
  runApp(WashApp());
}
