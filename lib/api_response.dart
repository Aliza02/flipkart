import 'dart:convert';
import 'package:flutter/services.dart';

Future<dynamic> readData() async {
  String jsonString = await rootBundle.loadString('assets/json/products.json');
  return jsonDecode(jsonString);

  // return product.fromJson(jsonDecode(jsonString));
}
