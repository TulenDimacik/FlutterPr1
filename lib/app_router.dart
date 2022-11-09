import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica2/main.dart';
import 'package:practica2/presentation/screen/admin/AdminPage.dart';
import 'package:practica2/presentation/screen/auth/AuthorisationPage.dart';
import 'package:practica2/presentation/screen/auth/RegistrationPage.dart';
import 'package:practica2/presentation/screen/user/Userpage.dart';

const String screen1NamePage = 'AuthorisationPage';
const String screen2NamePage = 'RegistrationPage';
const String screen3NamePage = 'AdminPage';
const String screen4NamePage = 'UserPage';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case screen1NamePage:
      {
        return MaterialPageRoute(builder: (_) => AuthorisationPage());
      }
      case screen2NamePage:
      {
        return MaterialPageRoute(builder: (_) => RegistrationPage());
      }
      case screen3NamePage:
      {
        return MaterialPageRoute(builder: (_) => AdminPage());
      }
      case screen4NamePage:
      {
        return MaterialPageRoute(builder: (_) => UserPage());
      }
    }
  }
}
