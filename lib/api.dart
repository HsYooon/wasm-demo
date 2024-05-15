// https://api.currencybeacon.com/v1/latest?api_key=Y39a3aHGDO75HU1SYg5srx4DIHStMJ4z&base=KRW&symbols=USD,EUR,CAD,JPY,GBP

import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:wasm_demo/enums.dart';

var url = Uri.https('example.com', '/temp/a');

class Api {
  final client = http.Client();
  // API-KEY

  void getCurrencyExchangeRate(String base, List<Currency> currecies) {
    _call();
  }

  void _call() async {
    var response = await http.post(url, body: {});
    log('Response status: ${response.statusCode}');
    log('Response body: ${response.body}');
    //log(await http.read(Uri.https('example.com', 'foobar.txt')));
  }
}
