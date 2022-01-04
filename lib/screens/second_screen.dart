// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Plan de Estudio'),
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'assets/plandeestudios.png',
                  fit: BoxFit.contain,
                ),
              ),
              TextButton(
                child: const Text('Datos de los alumnos'),
                style: TextButton.styleFrom(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    elevation: 5,
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    onSurface: Colors.grey,
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontStyle: FontStyle.normal)),
                onPressed: () {
                  print('Botón apretado');
                  Navigator.pushNamed(context, '/third');
                },
              ),
              Container(alignment: Alignment.center),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('Botón apretado');
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  child: const Text('Ir al inicio'),
                ),
              )
            ],
          ),
        ));
  }
}
