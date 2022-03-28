import 'package:fiap_core_app/src/app/components/export.dart';
import 'package:flutter/material.dart';

import '../../components/standard_content.dart';

class BalancePage extends StatefulWidget {
  final String balanceValue;

  BalancePage({required this.balanceValue});

  @override
  State<StatefulWidget> createState() {
    return _BalancePageState();
  }
}

class _BalancePageState extends State<BalancePage> {
  TextEditingController inputValueController = TextEditingController();
  double inputValue = 0.0;
  double parsedValue = 0.0;

  @override
  void initState() {
    super.initState();
    parsedValue = double.parse(widget.balanceValue);
  }

  changeValue({required String initalValue}) {
    var value = double.parse(initalValue);
    setState(() {
      parsedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      appBarTitle: 'Saldo',
      body: Column(
        children: [
          StandardTextForm(
            inputController: inputValueController,
            label: 'Entrada do mês',
            onEditingComplete: () {
              changeValue(initalValue: inputValueController.text);
            },
          ),
          const SizedBox(
            height: 25,
          ),
          StandardCardContent(
            cardTitle: 'Valor: R\$ ${parsedValue.toStringAsFixed(2)}',
          ),
        ],
      ),
    );
  }
}
