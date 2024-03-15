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
  int selectedOption = 1;

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
              if (value == null || value.isEmpty) {
                return 'Masukkan nama terlebih dahulu!';
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
          const Row(
            children: [
              Text(
                'Jenis Kelamin',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
          Row(
            children: [
              Radio<int>(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              const Text('P'),
              const SizedBox(width: 20),
              Radio<int>(
                value: 2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              const Text('L'),
            ],
          ),
        ],
      ),
    );
  }
}
