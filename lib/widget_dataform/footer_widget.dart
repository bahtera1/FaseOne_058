import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key, required this.onPressedDataform});

  final VoidCallback onPressedDataform;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 25),
          child: ElevatedButton(
            onPressed: onPressedDataform,
            child: Text("Submit"),
          ),
        )
      ],
    );
  }
}
