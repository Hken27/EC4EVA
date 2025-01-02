import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_dua/Controller/auth_controller.dart';
// import 'package:tugas_dua/View/Auth/admin.dart';
// import 'package:tugas_dua/View/Auth/client.dart';
import 'package:tugas_dua/View/Auth/signin_screen.dart';
import 'package:tugas_dua/View/Auth/signup_screen.dart';
import 'package:tugas_dua/View/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Inisialisasi AuthController
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/sign-in', // Set initial route ke halaman SignIn
      // getPages: [
      //   GetPage(name: '/sign-in', page: () => const SignInPage()),
      //   GetPage(name: '/sign-up', page: () => const SignUpPage()),
      //   GetPage(name: '/admin-home', page: () => const SplashView()),
      //   GetPage(name: '/client-home', page: () => const SplashView()),
      // ],
      // Arahkan ke halaman SignIn atau SignUp jika pengguna belum login
      // home: const SignInPage(),
      home: const SplashView(),
    );
  }
}
