import 'package:flutter/material.dart';
import 'counter.dart';

void main() {
  runApp(const CounterApplication());
}

class CounterApplication extends StatelessWidget {
  const CounterApplication({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Application',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Text("Counter Page"),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  const CounterScreenState({Key? key}) : super(key: key);

  @override
  _CounterScreen createState() => _CounterScreen();
}

class _CounterScreen extends State<CounterScreenState> {

  Counter c = Counter();
  int x = c.getCounter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Counter App "),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            " Counter: $x",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.w600,
              fontFamily: "Tahoma",
              color: Colors.deepPurple,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    c.incrementCount();
                    x = c.getCounter();
                  });
                },
                child: const Text(" + "),
                style: TextButton.styleFrom(
                  primary: Colors.green,
                  textStyle: const TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {
              setState(() {
                c.decrementCount();
                x = c.getCounter();
              });
            },
            child: const Text(" - "),
            style: TextButton.styleFrom(
              primary: Colors.red,
              textStyle: const TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
