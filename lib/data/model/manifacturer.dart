import 'package:practica2/domain/entity/manifacturer_entity.dart';

class Manifacturer extends ManifacturerEntinty {
  late int id;
  final String manifacturerName;
  final String manifacturerCountry;

  Manifacturer({required this.id,required this.manifacturerName, required this.manifacturerCountry})
      : super(id:id,manifacturerName: manifacturerName, manifacturerCountry: manifacturerCountry);

  Map<String, dynamic> toMap() {
    return {'Manifacturer_Name': manifacturerName, 'Manifacturer_Country': manifacturerCountry};
  }

  factory Manifacturer.toFromMap(Map<String, dynamic> json) {
    return Manifacturer(
      id:json['ID_Manifacturer'],  manifacturerName: json['Manifacturer_Name'], manifacturerCountry: json['Manifacturer_Country']);
  }
}
