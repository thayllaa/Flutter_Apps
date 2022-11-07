import 'package:flutter/material.dart';
import 'convert_c-f.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Temperature Converter",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @Override
  State<MyHomePage> createState() => _MyHomePageState();

  class _MyHomePageState extends State<MyHomePage> {
    TextEditingController txtTemperature_gc = TextEditingController();
    TextEditingController txtTemperature_gf = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Temperature Converter "),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            " Celsius (ºC) ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 33.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Times New Roman"),
          ),
          const TextField(
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: " Valor em ºC "),
                textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
              fontWeight: FontWeight.w200,
              fontFamily: "Tahoma",
            ),
          ),

          const Text(
            " Fahrenheit (ºF) ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 33.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Times New Roman"),
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: " Valor em ºF "),
                textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
              fontWeight: FontWeight.w200,
              fontFamily: "Tahoma",
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    " Convert ºC to ºF ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.0,
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Tahoma",
                    ),
                  ))
            ],
          
          ),Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (txtTemperature_gc.text.isEmpty) 
                      txtTemperature_gc.txt = "Insira valor!";
                      double graus;
                      graus = double.parse(txtTemperature_gc.text);
                      t.gc = graus;
                      txtTemperature_gf.txt = t.cf().toString();
                    })
                  },
                  child: const Text(
                    " Convert ºF to ºC ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.0,
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Tahoma",
                    ),
                  ))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "  Reset  ",
                    style: TextStyle(
                      fontSize: 27.0,
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Tahoma",
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
