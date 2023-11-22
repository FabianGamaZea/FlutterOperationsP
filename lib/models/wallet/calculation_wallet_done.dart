class CalculationWalletDone {
  final dynamic mes;
  final dynamic movimientos;
  CalculationWalletDone({required this.mes, required this.movimientos});

  factory CalculationWalletDone.fromJson(Map<String, dynamic> json) {
    return CalculationWalletDone(
      mes: json["Mes"],
      movimientos: json["Movimientos"],
    );
  }
}