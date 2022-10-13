import 'package:practica2/domain/entity/warehouse_entity.dart';

class Warehouse extends WarehouseEntinty {
  late int id;
  final String address;
  final int warehouseNumber;

  Warehouse({required this.address, required this.warehouseNumber})
      : super(warehouseNumber: warehouseNumber, address: address);

  Map<String, dynamic> toMap() {
    return {'Address': address, 'Warehouse_Number': warehouseNumber};
  }

  factory Warehouse.toFromMap(Map<String, dynamic> json) {
    return Warehouse(
        address: json['Address'], warehouseNumber: json['Warehouse_Number']);
  }
}
