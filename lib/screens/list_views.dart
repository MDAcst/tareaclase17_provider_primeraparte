// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({Key key}) : super(key: key);

  List<Map> personas = [
    {
      'Nombre y apellido': 'Shmaryahu Yosef Jaim Kanievsky',
      'Fecha de nacimiento': '08/01/1928',
    },
    {
      'Nombre y apellido': 'Ovadia Yosef',
      'Fecha de nacimiento': '23/09/1920',
    },
    {
      'Nombre y apellido': 'Esther Jungreis',
      'Fecha de nacimiento': '27/04/1936',
    },
    {
      'Nombre y apellido': 'Israel Meir Kegan',
      'Fecha de nacimiento': '06/02/1839',
    },
    {
      'Nombre y apellido': 'Menajem Mendel Schneerson',
      'Fecha de nacimiento': '18/04/1902',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                print('Botón apretado');
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Atrás'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: personas.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(personas[index]['Nombre y apellido']),
                    subtitle: Text('${personas[index]['Fecha de nacimiento']}'),
                    trailing: const Icon(Icons.school),
                    tileColor: Colors.white,
                    hoverColor: Colors.pinkAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
