import 'package:fiap_core_app/src/app/components/standardDialog.dart';
import 'package:fiap_core_app/src/app/components/standard_button.dart';
import 'package:fiap_core_app/src/app/components/standard_content.dart';
import 'package:fiap_core_app/src/app/components/standard_page.dart';
import 'package:fiap_core_app/src/app/components/standard_textform.dart';
import 'package:fiap_core_app/src/app/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransactionPageState();
  }
}

class _TransactionPageState extends State<TransactionPage> {
  TextEditingController transactionNameController = TextEditingController();
  TextEditingController transactionValueController = TextEditingController();
  FocusNode secondTextFormFocusNode = FocusNode();
  FocusNode firstTextFocousNode = FocusNode();

  List<TransacitonModel> transactionList = [
    TransacitonModel(transactionName: 'Conta de Gás', transactionValue: 150),
    TransacitonModel(transactionName: 'Conta de Luz', transactionValue: 450),
    TransacitonModel(transactionName: 'Chocolate', transactionValue: 50),
    TransacitonModel(transactionName: 'Conta de Água', transactionValue: 25),
    TransacitonModel(transactionName: 'Salada de Fruta', transactionValue: 7.55),
    TransacitonModel(transactionName: 'Docinho', transactionValue: 8.78),
    TransacitonModel(transactionName: 'Uma coca-cola', transactionValue: 9),
    TransacitonModel(transactionName: 'Bala fini', transactionValue: 4.25),
    TransacitonModel(transactionName: 'Pix para minha mãe', transactionValue: 1000),
    TransacitonModel(transactionName: '1L de gasolina', transactionValue: 97),
    TransacitonModel(transactionName: 'Parcela da moto', transactionValue: 789),
  ];

  addNewTransaction({required String transactionName, required String transactionValue}) {
    setState(
      () {
        transactionList.insert(
          0,
          TransacitonModel(
            transactionName: transactionName,
            transactionValue: num.parse(transactionValue),
          ),
        );
      },
    );
  }

  Future<void> _showMyDialog(String transactionName, num transactionValue) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(transactionName),
          content: SingleChildScrollView(
            child: Container(
              child: Text('O valor da sua conta é de R\$ ${transactionValue.toStringAsFixed(2)} reais'),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            StandardTextForm(
              focusNode: firstTextFocousNode,
              onEditingComplete: () {
                secondTextFormFocusNode.nextFocus();
              },
              label: 'Nome da Conta',
              inputController: transactionNameController,
            ),
            const SizedBox(height: 15),
            StandardTextForm(
              focusNode: secondTextFormFocusNode,
              label: 'Valor da Conta',
              inputController: transactionValueController,
            ),
            const SizedBox(height: 15),
            StandardButton(
                buttonText: 'Adicionar nova transação',
                onPressed: () {
                  addNewTransaction(
                      transactionName: transactionNameController.text,
                      transactionValue: transactionValueController.text);
                }),
            const SizedBox(height: 15),
            ListView.separated(
              shrinkWrap: true,
              itemCount: transactionList.length,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(
                height: 15,
              ),
              itemBuilder: (context, index) {
                var item = transactionList[index];
                return GestureDetector(
                  onTap: () {
                    _showMyDialog(item.transactionName, item.transactionValue);
                    print(item.transactionName);
                    print(item.transactionValue);
                    print(index);
                  },
                  child: StandardCardContent(
                    leftText: item.transactionName,
                    rightText: item.transactionValue.toString(),
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
