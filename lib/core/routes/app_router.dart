import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash_icareer/core/di/service_locator.dart';
import 'package:wash_icareer/core/routes/app_routes.dart';
import 'package:wash_icareer/features/home/presentation/ui/home_screen.dart';
import 'package:wash_icareer/features/register/presentation/cubit/register_cubit.dart';
import 'package:wash_icareer/features/register/presentation/ui/register_screen.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(getIt()),
            child: RegisterScreen(),
          ),
        );

      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
