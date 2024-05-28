import 'package:flutter/material.dart';
import 'package:wasm_demo/api.dart';

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
    Api.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: Column(
        children: [
          const Row(
            children: [
              Text('General Statistics'),
            ],
          ),
          const Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 500,
                    height: 500,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: BoxWidget(),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 500,
                    height: 500,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: BoxWidget2(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 500,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: BoxWidget3(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade600,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'visitor',
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      '14,333',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key});

  @override
  Widget build(Object context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                Text(
                  'Tranffic source',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                ),
                Spacer(),
                Icon(Icons.calendar_month)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                Text(
                  '1,231',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade800,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade800,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoxWidget2 extends StatelessWidget {
  const BoxWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade600,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                Text(
                  'Contry stats',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                ),
                Spacer(),
                Icon(Icons.calendar_month, color: Colors.white)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                Text('미국', style: TextStyle(color: Colors.white)),
                Spacer(),
                Text('1,390', style: TextStyle(color: Colors.white)),
                Row(
                  children: [
                    Icon(Icons.arrow_upward, color: Colors.red),
                    Text('3.3%', style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoxWidget3 extends StatelessWidget {
  const BoxWidget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade600,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                Text(
                  'Contry stats',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                ),
                Spacer(),
                Icon(Icons.calendar_month, color: Colors.white)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                Text('미국', style: TextStyle(color: Colors.white)),
                Spacer(),
                Text('1,390', style: TextStyle(color: Colors.white)),
                Row(
                  children: [
                    Icon(Icons.arrow_upward, color: Colors.red),
                    Text('3.3%', style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
