import 'package:fiap_core_app/src/app/components/standard_button.dart';
import 'package:fiap_core_app/src/app/components/standard_textform.dart';
import 'package:fiap_core_app/src/app/modules/create_account/create_account.dart';
import 'package:fiap_core_app/src/utils/export.dart';
import 'package:fiap_core_app/src/utils/padding_sizes.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingSizes.introPageBorder,
          right: PaddingSizes.introPageBorder,
          top: PaddingSizes.introPageTop,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            StandardTextForm(
              label: eMail,
            ),
            const SizedBox(
              height: 15.0,
            ),
            StandardTextForm(
              label: password,
            ),
            const SizedBox(
              height: 15.0,
            ),
            StandardButton(
              buttonText: login,
              onPressed: () {},
            ),
            const SizedBox(
              height: 15.0,
            ),
            StandardButton(
              buttonText: createAccount,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => CreateAccount()),
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
