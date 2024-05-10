import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Row(
            children: [Text('General Statistics')],
          ),
          Row(
            children: [
              const Column(
                children: [
                  SizedBox(
                    width: 500,
                    height: 500,
                    child: BoxWidget(),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    child: const Text('box1'),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    child: const Text('box1'),
                  )
                ],
              ),
            ],
          )
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
                  decoration: BoxDecoration(color: Colors.blueGrey.shade100, borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.blueGrey.shade100, borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 300,
                  decoration: BoxDecoration(color: Colors.blueGrey.shade800, borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 350,
                  decoration: BoxDecoration(color: Colors.blueGrey.shade800, borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
