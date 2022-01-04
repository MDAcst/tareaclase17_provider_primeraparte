import 'package:flutter/material.dart';
import 'package:gmaj_test_app/models/data_model.dart';

class DetalleUsuario extends StatelessWidget {
  final User usuario;
  const DetalleUsuario(this.usuario, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Id: ${usuario.id}'),
            Text('Nombre: ${usuario.firstName}'),
            Text('Apellido: ${usuario.lastName}'),
            Text('Email: ${usuario.email}'),
          ],
        ),
      ),
    );
  }
}
