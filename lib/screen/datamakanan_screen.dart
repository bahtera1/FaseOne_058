import 'package:flutter/material.dart';

class DatamakananScreen extends StatelessWidget {
  const DatamakananScreen(
      {super.key,
      required this.nama,
      required this.notelepon,
      required this.alamat});

  final String nama;
  final String notelepon;
  final String alamat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama: , $nama",
            )
          ],
        ),
      ),
    );
  }
}
