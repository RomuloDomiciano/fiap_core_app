import 'package:fiap_core_app/src/app/modules/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fiap_core_app/src/utils/export.dart';
import 'package:fiap_core_app/src/app/components/standard_button.dart';
import 'package:fiap_core_app/src/app/components/standard_textform.dart';

// ignore: use_key_in_widget_constructors
class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createAccount),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingSizes.introPageBorder,
          right: PaddingSizes.introPageBorder,
          top: PaddingSizes.introPageTop,
        ),
        child: Column(
          children: [
            const Text(
              createAccountBodyText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 25.0,
            ),
            StandardTextForm(label: name),
            const SizedBox(
              height: 25.0,
            ),
            StandardTextForm(label: eMail),
            const SizedBox(
              height: 25.0,
            ),
            StandardTextForm(label: password),
            const SizedBox(
              height: 25.0,
            ),
            StandardTextForm(label: confirmPassword),
            const SizedBox(
              height: 25.0,
            ),
            StandardButton(
              buttonText: createAccount,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
