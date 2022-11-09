import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:practica2/common/data_base_request.dart';
import 'package:practica2/core/crypto/crypto.dart';
import 'package:practica2/core/exception/failure.dart';
import 'package:practica2/data/model/userinformation.dart';
import 'package:practica2/data/model/users.dart';
import 'package:practica2/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import '../../core/db/data_base_helper.dart';
import '../../domain/repositories/auth_repositories.dart';

class AuthRepositoriesImpl implements AuthRepositories {
  final db = DataBaseHelper.instance.database;
  @override
  String get table => DataBaseRequest.tableUsers;
  String get tableUserInformation => DataBaseRequest.tableUserInformation;

  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      var user = await db.query(
        table,
        columns: ['Login', 'Password', 'Role_ID'],
        where: 'Login = ?',
        whereArgs: [login],
      );

      if(user.isEmpty){
        return Left('Такого пользователя нет');
      }


      if(user.first['Password']!= Crypto.crypto(password)){
        return Left(AuthPasswordFailure().errorMessage);
      }

      return Right(RoleEnum.values[(user.first['Role_ID'] as int) -1]);
    } on DatabaseException catch (error) {
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }
  }

  @override
  Future<Either<String, bool>> signUP(String surname,String username,String patronymic,String email,String login, String password) async {
    try {
      await db.insert(
        table,
        Users(
          login: login,
          password: password,
          roleID: RoleEnum.user.id,
        ).toMap(),
      );
       final dynamic data = await db.rawQuery('SELECT ID_User FROM Users ORDER BY ID_User DESC LIMIT 1');
      await db.insert(
        tableUserInformation,
        UserInformation(
          surname: surname,
          userName: username,
          patronymic: patronymic,
          email: email,
          userID: data.last['ID_User'],
        ).toMap(),
      );
      return const Right(true);
    } on DatabaseException catch (error) {
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }
  }
}
