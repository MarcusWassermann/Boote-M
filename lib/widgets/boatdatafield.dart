import 'package:flutter/material.dart';

class BoatDataField extends StatelessWidget {
  final String label;

  const BoatDataField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 5.0),
        Container(
          width: 200.0,
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
