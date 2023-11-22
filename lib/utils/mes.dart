class Mes{
  static String obtenerNombreDelMes(int numeroDeMes) {
  final meses = [
    "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio",
    "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"
  ];
  
  if (numeroDeMes >= 1 && numeroDeMes <= 12) {
    return meses[numeroDeMes - 1]; // Restamos 1 para obtener el índice correcto en la lista.
  } else {
    return "Mes inválido";
  }
}
}