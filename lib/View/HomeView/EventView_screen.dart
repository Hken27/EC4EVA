import 'package:flutter/material.dart';

class EventviewScreen extends StatelessWidget {
  final String imgAssetPath;
  final String eventType;

  EventviewScreen({required this.imgAssetPath, required this.eventType});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(111, 41, 64, 78),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imgAssetPath, height: 27),
          const SizedBox(height: 24),
          Text(
            eventType,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
