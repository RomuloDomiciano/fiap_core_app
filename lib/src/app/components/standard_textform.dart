import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StandardTextForm extends StatelessWidget {
  final String label;

  StandardTextForm({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      ),
    );
  }
}
