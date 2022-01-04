import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _NewFirstScreenState();
}

class _NewFirstScreenState extends State<FirstScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Desarrollo de Apps Móviles'),
          centerTitle: true,
          backgroundColor: Colors.orange,
          leading: Container(),
        ),
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              SafeArea(
                  child: SingleChildScrollView(
                      child: Scrollbar(
                          interactive: true,
                          thickness: 7.5,
                          child: Column(children: [
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                  child: const Text('Plan de Estudios'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/fourth');
                                  },
                                  child: const Text('Profesores'),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 75, color: Colors.black38),
                                )),
                                Image.network(
                                  'http://gmajcenter.org/escuela/index_files/46257d5b-e878-49f2-97f7-7dd994b2a4a9.png',
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            )
                          ]))))
            ])));
  }
}
