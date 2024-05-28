// https://api.currencybeacon.com/v1/latest?api_key=Y39a3aHGDO75HU1SYg5srx4DIHStMJ4z&base=KRW&symbols=USD,EUR,CAD,JPY,GBP

import 'dart:developer';
import 'package:wasm_demo/enums.dart';
import 'package:dio/dio.dart';

class Api {
  Api._();
  static final Api instance = Api._();

  static final dio = Dio();
  static const baseUrl = 'https://api.currencybeacon.com/v1/latest';
  static const test = '/test/test';

// ?api_key=Y39a3aHGDO75HU1SYg5srx4DIHStMJ4z&base=KRW&symbols=USD,EUR,CAD,JPY,GBP
  static void request() async {
    String apiKey = 'Y39a3aHGDO75HU1SYg5srx4DIHStMJ4z';
    String base = 'KRW';
    List<String> symbols = ['USD', 'EUR', 'CAD', 'JPY', 'GBP'];

    Response response;
    response = await dio.get('/test?id=12&name=dio');
    // The below request is the same as above.
    response = await dio.get(
      baseUrl,
      queryParameters: {
        'api_key': apiKey,
        'base': base,
        'symbols': symbols.join(',')
      },
    );
    print((response.data.toString()));
  }

  void _call() {}

  void getCurrencyExchangeRate(String base, List<Currency> currecies) {}
}
