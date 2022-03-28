import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StandardTextForm extends StatelessWidget {
  final String label;
  final TextEditingController? inputController;
  final Function()? onEditingComplete;

  StandardTextForm({required this.label, this.inputController, this.onEditingComplete});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      controller: inputController,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      ),
    );
  }
}
