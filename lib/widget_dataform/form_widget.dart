import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget(
      {super.key,
      required this.formkey,
      required this.etNama,
      required this.etNoTelepon,
      required this.etAlamat});

  final GlobalKey<FormState> formkey;
  final TextEditingController etNama;
  final TextEditingController etNoTelepon;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: [
          const SizedBox(height: 16),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: widget.etNama,
            decoration: const InputDecoration(
              labelText: "Nama",
              hintText: "Masukan Nama",
              prefixIcon: Icon(Icons.input),
            ),
            validator: (value) {
              bool valid = RegExp(r"@").hasMatch(value!);
              if (value.isEmpty) {
                return "Masukkan Nama dengan benar";
              } else if (!valid) {
                return "Nama Harus Text";
              }
              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: widget.etNoTelepon,
            decoration: const InputDecoration(
              labelText: "No Telepon",
              hintText: "Masukan No Telepon",
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: widget.etAlamat,
            decoration: const InputDecoration(
              labelText: "Alamat",
              hintText: "Masukan Alamat",
              prefixIcon: Icon(Icons.home),
            ),
          ),
        ],
      ),
    );
  }
}
