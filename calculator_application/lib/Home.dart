// ignore_for_file: non_constant_identifier_names, file_names


import 'package:flutter/material.dart';
import 'package:calculator_application/calcs.dart';
import 'About.dart';
import 'calcs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Flutter Demo Applicaion ',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: ' BMI Calculator '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController txtB1 = TextEditingController();
  TextEditingController txtB2 = TextEditingController();
  TextEditingController txtResult = TextEditingController();

  late FocusNode focusNode1;
  @override
  void initState() {
    super.initState();
    focusNode1 = FocusNode();
  }

  @override
  void dispose() {
    focusNode1.dispose();
    super.dispose();
  }

  Calculations c = Calculations();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " 1ª Avaliação: DDM-I ", textAlign: TextAlign.center),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
            ),
            child: Text(
              " Menu " ,
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.groups),
              title: const Text(" About "),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text(" IBM Calculator "),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(
                left: 35.0,
                right: 35.0,
                bottom: 10.0,
              ),
              child: TextField(
                controller: txtB1,
                focusNode: focusNode1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: " Insira o 1º valor aqui "),
                style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Tahoma",
                    color: Colors.deepPurple),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 35.0,
                right: 35.0,
                bottom: 10.0,
              ),
              child: TextField(
                controller: txtB2,
                focusNode: focusNode1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: " Insira o 2º valor aqui "),
                style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Tahoma",
                    color: Colors.deepPurple),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 35.0,
                right: 35.0,
                bottom: 10.0,
              ),
              child: TextField(
                controller: txtResult,
                enabled: false,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "  ", border: OutlineInputBorder()),
                style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Tahoma",
                    color: Colors.deepPurple),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      double B1 = double.parse(txtB1.text);
                      double B2 = double.parse(txtB2.text);
                      double result = c.add(B1, B2);
                      txtResult.text = result.toString();
                    },
                    child: const Text(
                      " + ",
                      style: TextStyle(
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Tahoma",
                          color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double B1 = double.parse(txtB1.text);
                      double B2 = double.parse(txtB2.text);
                      double result = c.subtract(B1, B2);
                      txtResult.text = result.toString();
                    },
                    child: const Text(
                      " - ",
                      style: TextStyle(
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Tahoma",
                          color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double B1 = double.parse(txtB1.text);
                      double B2 = double.parse(txtB2.text);
                      double result = c.multiply(B1, B2);
                      txtResult.text = result.toString();
                    },
                    child: const Text(
                      " x ",
                      style: TextStyle(
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Tahoma",
                          color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double B1 = double.parse(txtB1.text);
                      double B2 = double.parse(txtB2.text);
                      double result = c.divide(B1, B2);
                      txtResult.text = result.toString();
                    },
                    child: const Text(
                      " / ",
                      style: TextStyle(
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Tahoma",
                          color: Colors.black),
                    ),
                  ),
                ]),
          ]),
    );
  }
}
