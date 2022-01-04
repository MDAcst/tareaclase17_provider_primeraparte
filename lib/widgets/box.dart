import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color color;
  const Box(this.color, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      color: color,
      height: 100,
      width: 100,
      child: Text('Caja'),
    );
  }
}
