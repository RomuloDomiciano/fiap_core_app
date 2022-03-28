import 'package:fiap_core_app/src/app/components/standard_button.dart';
import 'package:fiap_core_app/src/app/components/standard_card.dart';
import 'package:fiap_core_app/src/app/modules/balance_detail/balance_page.dart';
import 'package:flutter/material.dart';
import 'package:fiap_core_app/src/utils/export.dart';
import 'package:fiap_core_app/src/app/components/standard_page.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      appBarTitle: homePage,
      body: Column(
        children: [
          StandardCard(
            cardTitle: 'Saldo',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BalancePage(
                    balanceValue: '25',
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
