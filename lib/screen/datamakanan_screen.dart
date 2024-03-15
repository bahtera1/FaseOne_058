import 'package:flutter/material.dart';
import 'package:ucp1/screen/detailform_screen.dart';

class DatamakananScreen extends StatelessWidget {
  const DatamakananScreen({
    super.key,
    required this.nama,
    required this.notelepon,
  });

  final String nama;
  final String notelepon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Makanan ",
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Nama : $nama"),
              Text("No Telp : $notelepon"),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailformScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
