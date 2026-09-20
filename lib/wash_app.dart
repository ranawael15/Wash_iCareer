import 'package:flutter/material.dart';
import 'package:wash_icareer/core/routes/app_router.dart';
import 'package:wash_icareer/core/routes/app_routes.dart';
import 'package:wash_icareer/main.dart';

class WashApp extends StatelessWidget {
  const WashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: getInitialPage(),
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }

  getInitialPage() {
    if (token != null) {
      return AppRoutes.homeScreen;
    } else {
      return AppRoutes.registerScreen;
    }
  }
}
