import 'package:fiap_core_app/src/app/modules/intro_page/intro_page.dart';
import 'package:fiap_core_app/src/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: IntroPage(),
    );
  }
}
