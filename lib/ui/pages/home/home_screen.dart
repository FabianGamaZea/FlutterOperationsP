import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_operations_p/router/app_routes.dart';


class HomeScreen extends StatelessWidget {
   
  HomeScreen({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;
    return Scaffold(
      body: ListView.separated(
            itemBuilder: (context, index) => ListTile(title: Text(menuOption[index].name),
            trailing:  Icon(menuOption[index].icon,color: const Color.fromARGB(255, 1, 88, 79),),
            onTap: () {
              
              Navigator.pushNamed(context, menuOption[index].route);
            },
            
            ),
            
            separatorBuilder: (_ , __) => const Divider(),
            itemCount: menuOption.length)
    );
  }
}