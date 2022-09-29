import 'package:flutter/material.dart';
import 'package:practica1/Medinow.dart';
import 'package:practica1/MindDeepRelax.dart';
import 'package:practica1/Meditate.dart';

void main() {
runApp(const Pr1());
}
class Pr1 extends StatelessWidget {
  const Pr1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Medinow(),
    );
    
  }
} 