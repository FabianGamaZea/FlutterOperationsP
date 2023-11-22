import 'package:flutter/material.dart';
import 'package:flutter_operations_p/models/wallet/calculation_wallet_done.dart';
import 'package:flutter_operations_p/ui/pages/screen/wallet/widget/card_wallet.dart';
import 'package:flutter_operations_p/utils/mes.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Wallet extends StatefulWidget {
  final List<CalculationWalletDone> list;
  const Wallet({super.key, required this.list});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sucursal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder:  (BuildContext context, int index) {
      return CardWallet(calculationWalletDone: widget.list[index]);
    },
       separatorBuilder: (BuildContext context, int index) => const Divider(),
            itemCount: widget.list.length),
          ),
            ],)
        );  
    }
}