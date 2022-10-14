import 'package:practica2/domain/entity/order_entity.dart';

class Order extends OrderEntinty {
  late int id;
  final double orderCost;
  final String userID;
  final int furnitureID;

  Order({required this.id,required this.orderCost, required this.userID, required this.furnitureID})
      : super(id:id,orderCost: orderCost, userID: userID, furnitureID: furnitureID );

  Map<String, dynamic> toMap() {
    return {'Order_Cost': orderCost, 'User_ID': userID, 'Furniture_ID':furnitureID};
  }

  factory Order.toFromMap(Map<String, dynamic> json) {
    return Order(
      id:json['ID_Order'],  orderCost: json['Order_Cost'], userID: json['User_ID'], furnitureID: json['Furniture_ID'] );
  }
}