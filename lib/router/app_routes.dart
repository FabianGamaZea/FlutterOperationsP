import 'package:flutter/material.dart';
import 'package:flutter_operations_p/models/menu_options.dart';


import '../screens/context/buscador_banco.dart';


import '../screens/screens.dart';




class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
  // MenuOption(route: 'home', icon: Icons.home, name: 'Home', screen: HomeScreen()),
   // MenuOption(route: 'alert', icon: Icons.alternate_email_sharp, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'cartera', icon: Icons.wallet, name: 'Analisis de produccion anual por sucursal', screen: const CarteraScreen()),
    MenuOption(route: 'carteraPorSucursal', icon:Icons.wallet, name: 'Analisis de produccion mensual ', screen:  const GetRenewsByMonthGeneralScreen()),
    MenuOption(route: 'pendientes', icon: Icons.note_alt, name: 'Pendientes', screen: PendientesScreen()),
    MenuOption(route: 'total', icon: Icons.topic_outlined, name: 'Total Ventas-Renovaciones', screen: const TotalScreen()),
    MenuOption(route: 'carteraRealizada', icon: Icons.developer_board, name: 'Cartera Realizada', screen:  CarteraRealizadaScreen()),
    MenuOption(route: 'asesor', icon: Icons.assignment_ind_outlined, name: 'Movimientos Asesores', screen:  ApiBuscadorScreen()),
    MenuOption(route: 'ingresos', icon: Icons.monetization_on_outlined, name: 'Ingresos', screen:  const IngresosScreen()),
    MenuOption(route: 'Prueba', icon: Icons.castle_outlined, name: 'Banco', screen:  SearchableList()),
    MenuOption(route: 'Calculo', icon: Icons.calculate, name: 'Calculo', screen:  const CalculoScreen()),
    MenuOption(route: 'CarteraSucursales', icon: Icons.star, name: 'Reporte de ventas mensual por sucursal', screen:  const SalesGoalScreen()),
    MenuOption(route: 'CarteraCobranza', icon: Icons.co_present_sharp, name: 'Cartera Cobranza', screen:  const GetSalesGoalRecovery()),
    MenuOption(route: 'CalculoMensualSucursal', icon: Icons.calculate, name: 'Reporte de renovaciones', screen:  CalculoMensulSucursalScreen()),
    MenuOption(route: 'get-goals-comissionable', icon: Icons.compass_calibration, name: 'Metas comisionables', screen:  const GetGoalsComissionable()),
    MenuOption(route: 'get-adviser-renews-branch', icon: Icons.assignment_ind_outlined, name: 'Renovaciones por Asesores', screen:  getAdviserRenewsBranchScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
     
    for(final option in menuOptions){
      appRoutes.addAll({option.route :(BuildContext context) => option.screen});
    }

    return appRoutes; 

  }
 
 



 
}