import 'package:flutter/material.dart';

class PopularEventView extends StatelessWidget {
  final String desc;
  final String date;
  final String address;
  final String imgeAssetPath;

  PopularEventView({
    required this.address,
    required this.date,
    required this.imgeAssetPath,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140, // Memperbesar tinggi kotak
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        // color: const Color(0xff29404E),
        color: const Color.fromARGB(111, 41, 64, 78),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3, // Menentukan proporsi agar teks lebih lebar
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    desc,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2, // Membatasi hingga 2 baris
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/calender.png",
                        height: 14,
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          date,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/location.png",
                        height: 14,
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          address,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2, // Menentukan proporsi untuk gambar agar lebih lebar
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Image.asset(
                imgeAssetPath,
                height: 140, // Sesuaikan tinggi gambar dengan tinggi kotak
                fit: BoxFit
                    .cover, // Pastikan gambar menutupi seluruh area yang disediakan
              ),
            ),
          ),
        ],
      ),
    );
  }
}
