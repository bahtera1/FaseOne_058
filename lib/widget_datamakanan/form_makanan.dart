import 'package:flutter/material.dart';

class FormMakanan extends StatefulWidget {
  const FormMakanan(
      {super.key,
      required this.formKey,
      required this.etMakanan,
      required this.etMinuman,
      required this.etDesert});

  final GlobalKey<FormState> formKey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDesert;

  @override
  State<FormMakanan> createState() => _FormMakananState();
}

class _FormMakananState extends State<FormMakanan> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: widget.etMakanan,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Makanan",
            ),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: widget.etMinuman,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Minuman",
            ),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: widget.etDesert,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Dessert",
            ),
          ),
        ),
      ],
    ));
  }
}
