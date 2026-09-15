import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash_icareer/core/di/service_locator.dart';
import 'package:wash_icareer/features/register/ui/cubit/register_cubit.dart';
import 'package:wash_icareer/features/register/ui/ui/register_screen.dart';

import 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => RegisterCubit(getIt()),
              child: RegisterScreen(),
            ));
    }
  }
}