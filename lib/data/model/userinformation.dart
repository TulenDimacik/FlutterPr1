import 'package:practica2/domain/entity/userinformation_entity.dart';

class UserInformation extends UserInformationEntinty {
  late int id;
  final String surname;
  final String userName;
  final String patronymic;
  final String email;
  final int userID;

  UserInformation( {id=0,required this.surname, required this.userName, required this.patronymic, required this.email, required this.userID})
      : super(id:id,patronymic:patronymic, surname: surname, userName: userName, email: email, userID: userID );

  Map<String, dynamic> toMap() {
    return {'Surname': surname, 'User_Name': userName, 'Patronymic':patronymic,'Email': email, 'User_ID': userID};
  }

  factory UserInformation.toFromMap(Map<String, dynamic> json) {
    return UserInformation(
      id:json['ID_User_Information'], surname: json['Surname'], userName: json['User_Name'], patronymic: json['Patronymic'], email: json['Email'], userID:json['User_ID'] );
  }
}