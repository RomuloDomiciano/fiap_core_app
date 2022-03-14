import 'package:fiap_core_app/src/app/components/standard_button.dart';
import 'package:flutter/material.dart';
import 'package:fiap_core_app/src/utils/export.dart';
import 'package:fiap_core_app/src/app/components/standard_page.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String changingText;
  late bool toChange;

  @override
  void initState() {
    toChange = true;
    changingText = 'Iremos mudar esse texto';
    super.initState();
  }

  void changeValue() {
    setState(
      () {
        toChange = !toChange;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      appBarTitle: homePage,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              StandardButton(
                onPressed: changeValue,
                buttonText: 'Mudar estado',
              ),
              Text(toChange ? changingText : 'Um novo texto'),
            ],
          ),
        ),
      ),
    );
  }
}
