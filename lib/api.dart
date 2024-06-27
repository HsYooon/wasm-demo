// https://api.currencybeacon.com/v1/latest?api_key=Y39a3aHGDO75HU1SYg5srx4DIHStMJ4z&base=KRW&symbols=USD,EUR,CAD,JPY,GBP
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wasm_demo/enums.dart';

class Api {
  Api._();
  static Api instance = Api._();

  final String apiKey = 'Y39a3aHGDO75HU1SYg5srx4DIHStMJ4z';
  final String baseUrl = 'https://api.currencybeacon.com/v1/latest';

  // https://api.currencybeacon.com/v1/latest?api_key=Y39a3aHGDO75HU1SYg5srx4DIHStMJ4z&base=KRW&symbols=USD,EUR,CAD,JPY,GBP
  // get currency exchange rate
  Future<CurrencyData?> getCurrencyExchangeRate(
      String base, List<Currency> currecies) async {
    String url = '$baseUrl?api_key=$apiKey&base=$base&symbols=';
    for (var currency in currecies) {
      url += '${currency.name},';
    }
    url = url.substring(0, url.length - 1);
    final result = await _callApi(url)
        .then((value) => value.ok ? CurrencyData.fromJson(value.result) : null);
    return result;
  }

  Future<Response> _callApi(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print("API 호출 성공: ");
        return Response.ok(jsonDecode(response.body));
      } else {
        print("API 호출 실패: ${response.statusCode}");
        return Response.fail({});
      }
    } catch (e) {
      return Response.fail({});
    }
  }
}

class Response {
  final bool ok;
  final Map<String, dynamic> result;
  // constructor
  Response({required this.ok, this.result = const <String, dynamic>{}});

  Response.ok(this.result) : ok = true;
  Response.fail(this.result) : ok = false;
  Response.error(this.result) : ok = false;
}

class CurrencyData {
  final String base;
  final Map<String, double> rates;

  CurrencyData({required this.base, required this.rates});

  factory CurrencyData.fromJson(Map<String, dynamic> json) {
    return CurrencyData(
      base: json['base'],
      rates: Map<String, double>.from(json['rates']),
    );
  }

  @override
  String toString() {
    String ratesString = '';
    rates.forEach((key, value) {
      ratesString += '$key: $value, ';
    });
    ratesString = ratesString.substring(0, ratesString.length - 2);
    return 'Base: $base, Rates: $ratesString';
  }
}
