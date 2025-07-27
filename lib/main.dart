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

  void  _incrementCounter() {
    setState(() {

      _counter++;

      // if(_counter < 5){
      //   myData = "Reqem 5-den kichikdir";
      // }else if(_counter == 5){
      //   myData = "Reqem 5-dir";
      // }else{
      //   myData = "Reqem 5-den boyukdur";
      // }
      if(_counter == 1){
        myData = "Monday";
      } else if(_counter == 2){
        myData = "Tuesday";
      } else if(_counter == 3){
        myData = "Wednesday";
      }else if(_counter == 4){
        myData = "Thursday";
      }else if(_counter == 5){
        myData = "Friday";
      }else if(_counter == 6){
        myData = "Saturday";
      }else if(_counter == 7){
        myData = "Sunday";
      }else{
        myData = "Week haven`t that number";
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
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              myData,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
