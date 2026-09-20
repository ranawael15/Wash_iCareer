import 'package:flutter/material.dart';
import 'package:wash_icareer/core/di/service_locator.dart';
import 'package:wash_icareer/wash_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const WashApp());
}