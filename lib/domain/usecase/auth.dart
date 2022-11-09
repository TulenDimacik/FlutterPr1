import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:practica2/core/usecases/auth_user_case.dart';
import 'package:practica2/domain/entity/role_entity.dart';
import 'package:practica2/domain/repositories/auth_repositories.dart';

class Auth implements AuthUserCase<String, AuthParams, RegistrationParams> {
  final AuthRepositories authRepositories;
  Auth(this.authRepositories);

  @override
  Future<Either<String, RoleEnum>> signIn(AuthParams params) async {
    return await authRepositories.signIn(params.login, params.password);
  }

  @override
  Future<Either<String, bool>> signUp(RegistrationParams params) async {
    return await authRepositories.signUP(params.surname, params.username,
        params.patronymic, params.email, params.login, params.password);
  }
}

class AuthParams {
  final String login;
  final String password;
  AuthParams({required this.login, required this.password});
}

class RegistrationParams {
  final String surname;
  final String username;
  final String patronymic;
  final String email;
  final String login;
  final String password;

  RegistrationParams(
      {required this.surname,
      required this.username,
      required this.patronymic,
      required this.email,
      required this.login,
      required this.password});
}
