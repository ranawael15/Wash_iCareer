import 'package:flutter/material.dart';
import 'package:wash_icareer/core/routes/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, AppRoutes.loginScreen);
          }, icon: Icon(Icons.eight_k))
        ],
      ),
    );
  }
}
