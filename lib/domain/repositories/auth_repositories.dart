import 'package:dartz/dartz.dart';
import 'package:practica2/domain/entity/role_entity.dart';

abstract class AuthRepositories{

  String get table;

  ///Метод для авторизации пользователя
  Future<Either<String,RoleEnum>> signIn(String login, String password);

  ///Метод для регистрации пользователя
  Future<Either<String,bool>> signUP(String surname,String username,String patronymic,String email, String login, String password);
}