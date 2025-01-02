import 'package:flutter/material.dart';
import 'package:tugas_dua/View/HomeView/HomeView_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _isAlertVisible = true;

  @override
  void initState() {
    super.initState();
    // Menyembunyikan alert setelah 3 detik
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _isAlertVisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background dengan gambar acara/event
          Container(
            color: Colors.black, // Background hitam
          ),
          // Overlay gradient agar teks tetap terlihat jelas
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black87, Colors.black54],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Konten utama
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Image.asset(
                    "assets/ENDLESS CHAIN.png", // Ganti dengan logo Anda
                    height: 100,
                  ),
                  const SizedBox(height: 24),
                  // Nama aplikasi & tagline
                  const Text(
                    "ENDLESSCHAIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "EC4EVA! Endless Chain..........",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Tombol aksi utama
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(0, 0, 0, 0), // Merah
                            Color.fromARGB(255, 0, 0, 0), // Oranye
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Text(
                        "JELAJAHI EVENT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          // Alert transparan yang muncul dari atas
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: _isAlertVisible ? 0 : -100,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              opacity: _isAlertVisible ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Container(
                height: 50,
                color: Colors.black.withOpacity(0.7),
                child: const Center(
                  child: Text(
                    "Event Terdekat dalam 2 Hari Lagi!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
