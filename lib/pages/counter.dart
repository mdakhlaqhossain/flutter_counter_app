import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //variable
  int _c=0;

  //function
  void _increment(){
    setState(() {//rebuilds the widget
      _c++;
    });
  }

  //inteface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You pushed the button this many times:"),
            Text(_c.toString(),
            style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(onPressed: _increment, child: Text("Click Me")),
          ],
        ),
      ),
    );
  }
}