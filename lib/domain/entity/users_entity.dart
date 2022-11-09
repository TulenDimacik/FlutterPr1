import 'package:practica2/domain/entity/role_entity.dart';

class UsersEntinty{
  late int id;
  final String login;
  final String password;
  final int roleID;
  UsersEntinty( {this.id = 0, required this.login, required this.password, required this.roleID});
}
