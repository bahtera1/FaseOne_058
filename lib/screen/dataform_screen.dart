import 'package:flutter/material.dart';
import 'package:ucp1/screen/datamakanan_screen.dart';
import 'package:ucp1/widget_dataform/footer_widget.dart';
import 'package:ucp1/widget_dataform/form_widget.dart';
import 'package:ucp1/widget_dataform/header_widget.dart';

class DataformScreen extends StatelessWidget {
  const DataformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var notelp = TextEditingController();
    var alamat = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const HeaderWidget(),
                FormWidget(
                  etNama: nama,
                  etNoTelepon: notelp,
                  etAlamat: alamat,
                  formkey: formkey,
                ),
                FooterWidget(
                  onPressedDataform: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DatamakananScreen(
                                    nama: nama.text,
                                    notelepon: notelp.text,
                                  )),
                          (route) => false);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Data Telah Masuk"),
                      ));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
