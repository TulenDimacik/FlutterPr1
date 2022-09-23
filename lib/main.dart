import 'package:flutter/material.dart';
import 'package:practica1/screen1.dart';
import 'package:practica1/screen2.dart';
import 'package:practica1/screen3.dart';

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