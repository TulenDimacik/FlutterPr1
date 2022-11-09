import 'package:flutter/material.dart';
import 'package:practica2/app_router.dart';
import 'core/db/data_base_helper.dart';

void main() async {
  await DataBaseHelper.instance.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRouter,
      initialRoute: screen1NamePage,
    );
  }
}


