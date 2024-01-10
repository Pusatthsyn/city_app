import 'package:flutter/material.dart';

class DetayEkrani extends StatefulWidget {
  const DetayEkrani({super.key});

  @override
  State<DetayEkrani> createState() => _DetayEkraniState();
}

class _DetayEkraniState extends State<DetayEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        height: 58,
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.white),
        child: const Text(
          "Geri dön",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
