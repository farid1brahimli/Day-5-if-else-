import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  int _counter = 0;
  String myData = "Add a counter for Week:";
  String evenOddResult = ""; // Tək və ya cüt nəticəsi üçün

  final TextEditingController _numberController = TextEditingController(); // Input controller

  void _incrementCounter() {
    setState(() {
      _counter++;

      if (_counter == 1) {
        myData = "Monday";
      } else if (_counter == 2) {
        myData = "Tuesday";
      } else if (_counter == 3) {
        myData = "Wednesday";
      } else if (_counter == 4) {
        myData = "Thursday";
      } else if (_counter == 5) {
        myData = "Friday";
      } else if (_counter == 6) {
        myData = "Saturday";
      } else if (_counter == 7) {
        myData = "Sunday";
      } else {
        myData = "Week haven’t that number";
      }
    });
  }

  void _checkEvenOdd() {
    setState(() {
      final input = int.tryParse(_numberController.text);
      if (input == null) {
        evenOddResult = "Zəhmət olmasa rəqəm daxil edin!";
      } else {
        evenOddResult = input % 2 == 0 ? "Cütdür" : "Təkdir";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(myData),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 30),

              // Input sahəsi və Yoxla düyməsi
              TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Rəqəm daxil edin",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _checkEvenOdd,
                child: const Text("Yoxla"),
              ),
              const SizedBox(height: 10),
              Text(
                evenOddResult,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
4