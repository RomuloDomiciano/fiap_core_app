import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StandardPage extends StatelessWidget {
  final Widget body;
  final String? appBarTitle;

  StandardPage({required this.body, this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle ?? 'olá',
          style: const TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 45),
        child: body,
      ),
    );
  }
}
