import 'package:flutter/material.dart';
import 'package:ucp1/screen/detailform_screen.dart';
import 'package:ucp1/widget_datamakanan/form_makanan.dart';

class DatamakananScreen extends StatelessWidget {
  const DatamakananScreen(
      {super.key, required this.nama, required this.notelepon});

  final String nama;
  final String notelepon;

  @override
  Widget build(BuildContext context) {
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var desert = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Menu"),
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Nama : $nama"),
              Text("No Telepon : $notelepon"),
              FormMakanan(
                  formKey: formKey,
                  etMakanan: makanan,
                  etMinuman: minuman,
                  etDesert: desert),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailformScreen(
                          makanan: makanan.text,
                          minuman: minuman.text,
                          desert: desert.text,
                          nama: nama,
                          nohp: notelepon,
                        ),
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
      )),
    );
  }
}
