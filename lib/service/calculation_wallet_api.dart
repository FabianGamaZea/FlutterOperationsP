import 'dart:convert';
import 'package:flutter_operations_p/models/wallet/calculation_wallet_done.dart';
import 'package:flutter_operations_p/utils/.globals.dart';
import 'package:http/http.dart' as http;

class WalletApiService {

  static Future<List<CalculationWalletDone>> WalletDone(String branch, String year) async {
    
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Cookie': 'XSRF-TOKEN=eyJpdiI6Ikc4UDFZbzRZdnRaN2VocEY1VEpMK2c9PSIsInZhbHVlIjoiejlOVjU3Z2hjNXQwdXNOenFKQWo2SU1IdEpLTjFFbXpUYTV3VTYzNXFES2lScm9yVmc5dTFSQWxrXC9Ebm05clQ3TXR5UDRjNk1ReVFBWHc5c2tPS01RPT0iLCJtYWMiOiJjNmEzMjNkODY4ZjU3YWM2ZmMyOTA5NmNhOTJjOGU5ZDFkOGIxNDQxMzZhMGJkMDQzN2RjMTkxMDFhYmVjM2UzIn0%3D; laravel_session=eyJpdiI6IncwdGFEMlhzNVI0akpyT1lXZGhmT1E9PSIsInZhbHVlIjoieEVnQ002NHp1UkgzZ0xiR2toZngwRmZUaFEzdWNhRGhvMzFKcTFPbllLSk15YTVwVm1vaVdSNyt0T0hcL0VCOWdMWXE2WnNITGJYXC80azFwVld1TVc1Zz09IiwibWFjIjoiMWVlYjE0ZTRhOGIwZmE2ZjUwMjIxODY2ZTVlNjFkMGEzZTg2NDZlNDdjN2NhN2E3Mzk0YmJjYjE0ODhmYmJmZSJ9',
    };

    final Map<String, String> data = {
      "branch": branch,
      "year": year,
    };
    final Uri url = Uri.parse(Globals.apiUrl + '/api-app/internal/get-calculation-wallet-done').replace(queryParameters: data);

      final response = await http.get(
      url,
      headers: headers,
    );

      if (response.statusCode == 200) {
      List<CalculationWalletDone> list = []; 
      final List<dynamic> jsonResponse = json.decode(response.body);
      for (var element in jsonResponse) {
        list.add(CalculationWalletDone.fromJson(element));
      }


      return list;
    } else {
      throw Exception('Error en la solicitud: ${response.reasonPhrase}');
    }
  }
}
