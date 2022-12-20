import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nepselogin/login_pages/password_reset.dart';

import 'login_pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "login_page",
      routes: {
        "login_page": (context) => const LoginPage(),
        "reset_password": (context) => const PasswordReset(),
      },
    );
  }
}
