import 'package:practica2/domain/entity/furnituretype_entity.dart';

class FurnitureType extends FurnitureTypeEntity {
  late int id;
  final String typeName;

  FurnitureType({required this.id,required this.typeName}) : super(id:id,typeName: typeName);

  Map<String, dynamic> toMap() {
    return {'Type_Name': typeName};
  }

  factory FurnitureType.toFromMap(Map<String, dynamic> json) {
    return FurnitureType(id:json['ID_Furniture_Type'],typeName: json['Type_Name']);
  }
}