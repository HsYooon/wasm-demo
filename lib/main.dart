import 'package:flutter/material.dart';
import 'package:wasm_demo/api.dart';
import 'package:wasm_demo/enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    final result = Api.instance.getCurrencyExchangeRate('KRW', [Currency.usd]);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 54, 53),
      body: Column(
        children: [
          Row(
            children: [Text('General Statistics')],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(20), child: CardWidget()),
              Padding(padding: EdgeInsets.all(20), child: CardWidget()),
              Padding(padding: EdgeInsets.all(20), child: CardWidget()),
              Padding(padding: EdgeInsets.all(20), child: CardWidget()),
            ],
          )
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 173, 214, 199),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('USD', style: TextStyle(fontSize: 30)),
              Icon(Icons.currency_exchange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text('1,400', style: TextStyle(fontSize: 70)),
            ],
          ),
        ],
      ),
    );
  }
}
