import 'package:practica2/domain/entity/furnituretype_entity.dart';

class FurnitureType extends FurnitureTypeEntity {
  late int id;
  final String typeName;

  FurnitureType({required this.typeName}) : super(typeName: typeName);

  Map<String, dynamic> toMap() {
    return {'Type_Name': typeName};
  }

  factory FurnitureType.toFromMap(Map<String, dynamic> json) {
    return FurnitureType(typeName: json['Type_Name']);
  }
}