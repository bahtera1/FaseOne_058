import 'package:flutter/material.dart';

class FooterWidget2 extends StatelessWidget {
  const FooterWidget2({super.key, required this.onPressedDatamakanan});

  final VoidCallback onPressedDatamakanan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, bottom: 25),
          child: ElevatedButton(
            onPressed: onPressedDatamakanan,
            child: const Text("Selanjutnya"),
          ),
        ),
      ],
    );
  }
}
