import 'package:flutter/material.dart';
import 'package:flutter_operations_p/models/wallet/calculation_wallet_done.dart';
import 'package:flutter_operations_p/service/calculation_wallet_api.dart';
import 'package:flutter_operations_p/ui/pages/screen/wallet/wallet_screen.dart';
import 'package:flutter_operations_p/utils/branchs.dart';
import 'package:flutter_operations_p/widget/textFieldYear.dart';

class CalculationWallet extends StatefulWidget {
  const CalculationWallet({super.key});

  @override
  State<CalculationWallet> createState() => _CalculationWalletState();
}

class _CalculationWalletState extends State<CalculationWallet> {
  TextEditingController controller = TextEditingController();
  List<String> items =  BranchOffice.branchs;
  String dropdownvalue = '';
  @override
  void initState() {
    super.initState();
    if (items.isNotEmpty) {
      dropdownvalue = items.first;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: dropdownvalue,
              items: items.map((String items) { 
                return DropdownMenuItem( 
                  value: items, 
                  child: Text(items), 
                ); 
              }).toList(), onChanged: (String? newValue) {  
                setState(() { 
                  dropdownvalue = newValue!; 
                }); 
              }, ),
            TextFieldYear(controller: controller),
            ElevatedButton(onPressed: () async{
              
              List<CalculationWalletDone> list = await WalletApiService.WalletDone(dropdownvalue, controller.text);
              print(list);
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Wallet(list: list)));

            }, child: Text('Buscar'))
          ],
        ),
      ),
    );
  }
}