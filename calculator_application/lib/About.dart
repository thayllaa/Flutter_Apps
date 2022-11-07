// ignore_for_file: file_names

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text(" Sobre "),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.indigo.shade900,
        padding: const EdgeInsets.all(3.0),
        alignment: Alignment.center,
        child: Column(
          children: const [
            Text("\n Aplicação: ",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent
            )),
            Text("Foi proposta como 1ª avaliação de Desenvolvimento de Dispositivos Móveis I, a criação de uma aplicação Flutter com o tema livre."
            "\nA aplicação criada tem como tema Jogos, onde seu principal objetivo é entreter aos usuários.\n",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white
            ),),
            Text(" Equipe: ",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent
            )),
            Text("Os integrantes da equipe de desenvolvedores desta aplicação Flutter são: \nFelipe de Oliveira Ursini, Leonardo Hidemitsu Yogui Yamashiro e Thaylla de Santana.",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white
            ),),
          ],
        ),
      ),
    );
  }
}
