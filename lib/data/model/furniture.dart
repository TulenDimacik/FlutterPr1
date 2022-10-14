import 'package:practica2/domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntinty {
  late int id;
  final String furnitureName;
  final double weight;
  final String material;
  final String color;
  final int furnitureTypeID;
  final int manifacturerID;

  Furniture( {required this.id,required this.furnitureName, required this.weight,  required this.material, required this.color, required this.furnitureTypeID, required this.manifacturerID})
      : super(id:id, furnitureName:furnitureName, weight: weight, material: material, color: color, furnitureTypeID: furnitureTypeID, manifacturerID:manifacturerID );

  Map<String, dynamic> toMap() {
    return {'Furniture_Name': furnitureName, 'Weight': weight, 'Material':material,'Color': color, 'Furniture_Type_ID': furnitureTypeID,'Manifacturer_ID':manifacturerID};
  }

  factory Furniture.toFromMap(Map<String, dynamic> json) {
    return Furniture(
       id:json['ID_Furniture'], furnitureName: json['Furniture_Name'], weight: json['Weight'], material: json['Material'], color: json['Color'], furnitureTypeID:json['Furniture_Type_ID'], manifacturerID:json['Manifacturer_ID'] );
  }
}