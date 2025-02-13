import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My counter'),
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
  int _counter = 100;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }
  void _fiveincrementCounter() {
    setState(() {
      _counter+=5;
    });
  }
  void _fivedecreaseCounter() {
    setState(() {
      _counter-=5;
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
            const Text(
              'Counter value:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               
                FloatingActionButton(
                  onPressed: _decreaseCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                 FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
             
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                       FloatingActionButton(
                  onPressed: _fivedecreaseCounter,
                  tooltip: 'Decrementbyfive',
                  child: const Icon(Icons.remove),
                ),
                 FloatingActionButton(
                  onPressed: _fiveincrementCounter,
                  tooltip: 'Incrementbyfive',
                  child: const Icon(Icons.add),
                ),
                
              ]
            )   
          ],
        ),
      ), 
    ); }
}

