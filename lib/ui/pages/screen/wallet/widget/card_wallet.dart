import 'package:flutter/material.dart';
import 'package:flutter_operations_p/models/wallet/calculation_wallet_done.dart';
import 'package:flutter_operations_p/utils/mes.dart';

class CardWallet extends StatelessWidget {
  final CalculationWalletDone calculationWalletDone;
  const CardWallet({super.key , required this.calculationWalletDone});

  @override
  Widget build(BuildContext context) {

    return Center(child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 240, 241),
              border: Border.all(width: 1,color: const Color.fromARGB(255, 240, 240, 241)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft:Radius.circular(10),
                  bottomRight:Radius.circular(10)
              ),
            ),
            child: Row(children: [
              // Text(Mes.obtenerNombreDelMes(calculationWalletDone.mes)),
              Text('1')
            ]),
          ),);



   
  }
}