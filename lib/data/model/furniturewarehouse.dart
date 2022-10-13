import 'package:practica2/domain/entity/furniturewarehouse_entity.dart';

class FurnitureWarehouse extends FurnitureWarehouseEntinty {
  late int id;
  final int count;
  final int warehouseID;
  final int furnitureID;

  FurnitureWarehouse({required this.count, required this.warehouseID, required this.furnitureID})
      : super(count: count, warehouseID: warehouseID, furnitureID: furnitureID );

  Map<String, dynamic> toMap() {
    return {'Count': count, 'Warehouse_ID': warehouseID, 'Furniture_ID':furnitureID};
  }

  factory FurnitureWarehouse.toFromMap(Map<String, dynamic> json) {
    return FurnitureWarehouse(
        count: json['Count'], warehouseID: json['Warehouse_ID'], furnitureID: json['Furniture_ID'] );
  }
}