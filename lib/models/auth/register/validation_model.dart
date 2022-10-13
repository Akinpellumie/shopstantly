// To parse this JSON data, do
//
//     final validationModel = validationModelFromJson(jsonString);

import 'dart:convert';

ValidationModel validationModelFromJson(String str) =>
    ValidationModel.fromJson(json.decode(str));

String validationModelToJson(ValidationModel data) =>
    json.encode(data.toJson());

class ValidationModel {
  ValidationModel({
    required this.status,
    required this.message,
  });

  bool status;
  String message;

  factory ValidationModel.fromJson(Map<String, dynamic> json) =>
      ValidationModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
