import 'package:practica2/core/crypto/crypto.dart';
import 'package:practica2/domain/entity/role_entity.dart';
import 'package:practica2/domain/entity/users_entity.dart';

class Users extends UsersEntinty {
  Users({
    super.id = 0,
    required super.login,
    required super.password,
    required super.roleID,
  });

  Map<String, dynamic> toMap() {
    return {'Login': login, 'Password': Crypto.crypto(password), 'Role_ID': roleID};
  }

  factory Users.toFromMap(Map<String, dynamic> json) {
    return Users(
      login: json['Login'],
      password: json['Password'],
      roleID: json['Role_ID'] ,
    );
  }
}
