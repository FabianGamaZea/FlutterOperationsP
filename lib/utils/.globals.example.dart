
class Globals{

  static final Globals _instance = Globals._internal();

  factory Globals() {
    return _instance;
  }

  Globals._internal();

  String apiKey = 'your_api_key';
  static String apiUrl = 'https://www.localhost.com/';
}