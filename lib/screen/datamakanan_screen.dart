import 'package:flutter/material.dart';
import 'package:ucp1/screen/detailform_screen.dart';
import 'package:ucp1/widget_datamakanan/footer_widget2.dart';
import 'package:ucp1/widget_datamakanan/form_widget2.dart';
import 'package:ucp1/widget_datamakanan/header_widget.dart';

class DatamakananScreen extends StatelessWidget {
  const DatamakananScreen(
      {super.key, required this.nama, required this.notelepon});

  final String nama;
  final String notelepon;

  @override
  Widget build(BuildContext context) {
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var dessert = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const HeaderWidget(),
            FormWidget2(
              etMakanan: makanan,
              etMinuman: minuman,
              etDesert: dessert,
              formKey: formKey,
            ),
            FooterWidget2(
              onPressedDatamakanan: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailformScreen(
                                makanan: makanan.text,
                                minuman: minuman.text,
                                dessert: dessert.text,
                              )),
                      (route) => false);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Login berhasil"),
                  ));
                }
              },
            )
          ]),
        ),
      )),
    );
  }
}
