import 'package:practica2/domain/entity/users_entity.dart';

class Users extends UsersEntinty {
  late int id;
  final String login;
  final String password;
  final int roleID;

  Users({required this.id,required this.login, required this.password, required this.roleID})
      : super(id:id,login: login, password: password, roleID: roleID );

  Map<String, dynamic> toMap() {
    return {'Login': login, 'Password': password, 'Role_ID':roleID};
  }

  factory Users.toFromMap(Map<String, dynamic> json) {
    return Users(
      id:json['ID_User'],  login: json['Login'], password: json['Password'], roleID: json['Role_ID'] );
  }
}