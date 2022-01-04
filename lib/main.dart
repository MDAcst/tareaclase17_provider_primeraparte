import 'package:flutter/material.dart';
import 'package:gmaj_test_app/providers/usuario_provider.dart';
import 'package:gmaj_test_app/screens/counter.dart';
import 'package:gmaj_test_app/screens/first_screen.dart';
import 'package:gmaj_test_app/screens/home.dart';
import 'package:gmaj_test_app/screens/list_views.dart';
import 'package:gmaj_test_app/screens/second_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UsuarioProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Curso de Desarrollo de Apps Móviles',
        color: Colors.black,
        darkTheme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstScreen(),
          '/second': (context) => const SecondScreen(),
          '/third': (context) => ListViewScreen(),
          '/fourth': (context) => Home(),
          '/fifth': (context) => Counter(),
        },
      ),
    );
  }
}
