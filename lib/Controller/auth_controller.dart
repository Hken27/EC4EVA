import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_dua/View/Auth/signin_screen.dart';
import 'package:tugas_dua/View/Auth/signup_screen.dart';
import 'package:tugas_dua/View/splash_screen.dart';

class AuthController extends GetxController {
  var userRole = ''.obs;

  // Fungsi untuk login
  void signIn(String role) {
    userRole.value = role;

    // Menampilkan snackbar untuk login, dengan berbeda pesan dan warna tergantung role
    if (role == 'admin') {
      Get.snackbar(
        'Admin Login',
        'Successfully logged in as Admin',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    } else if (role == 'client') {
      Get.snackbar(
        'Client Login',
        'Successfully logged in as Client',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    }

    // Navigasi ke halaman sesuai role
    if (role == 'admin') {
      Get.offAll(() => const SplashView());
      // Get.offAll(() => const AdminHomePage());
    } else {
      Get.offAll(() => const SplashView());
      // Get.offAll(() => const ClientHomePage());
    }
  }

  // Fungsi untuk sign up
  void signUp(String role) {
    userRole.value = role;

    // Menampilkan snackbar untuk sign up, dengan berbeda pesan dan warna tergantung role
    if (role == 'admin') {
      Get.snackbar(
        'Admin Sign Up',
        'Successfully signed up as Admin',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    } else if (role == 'client') {
      Get.snackbar(
        'Client Sign Up',
        'Successfully signed up as Client',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.teal,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    }

    // Navigasi ke halaman sesuai role
    if (role == 'admin') {
      Get.offAll(() => const SplashView());
      // Get.offAll(() => const AdminHomePage());
    } else {
      Get.offAll(() => const SplashView());
      // Get.offAll(() => const ClientHomePage());
    }
  }

  // Fungsi untuk navigasi ke halaman sign up
  void goToSignUp() {
    Get.to(() => const SignUpPage());
  }

  // Fungsi untuk navigasi ke halaman sign in
  void goToSignIn() {
    Get.to(() => const SignInPage());
  }
}
