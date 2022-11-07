import 'package:flutter/material.dart';

import 'ScreenOne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: " Menu Drawer Application "),
    );
  }
}
  
  class MyHomePage extends StatelessWidget {
    const MyHomePage({ Key? key, required String title }) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(" Menu Drawer "),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("DDMI"), 
                accountEmail: Text("ddmi@gmail.com"),
              ),
              ListTile(
                leading: const Icon(Icons.add_box_outlined),
                title: const Text(" Tela 01 "),
                subtitle: const Text(" Meu 1º subtítulo "),
                trailing: const Icon(Icons.whatshot_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ScreenOne());
                },
              ),
              const ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text(" Tela 02 "),
                subtitle: Text(" Meu 2º subtítulo "),
                trailing: Icon(Icons.account_balance_outlined),
              ),
            ],
          ),
        ),
      );
    }
  }