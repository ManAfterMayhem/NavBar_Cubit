import 'package:flutter/material.dart';

class ArcivedTasks extends StatelessWidget {
  const ArcivedTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Arcived Tasks',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
        fontStyle: FontStyle.italic,
      ),
    ));
  }
}
