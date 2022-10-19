// To parse this JSON data, do
//
//     final errorModel = errorModelFromJson(jsonString);

import 'dart:convert';

GeneralResponseModel generalModelFromJson(String str) =>
    GeneralResponseModel.fromJson(json.decode(str));

String generalModelToJson(GeneralResponseModel data) => json.encode(data.toJson());

class GeneralResponseModel {
  GeneralResponseModel({
    required this.status,
    required this.message,
    this.data,
  });

  bool status;
  String message;
  dynamic data;

  factory GeneralResponseModel.fromJson(Map<String, dynamic> json) => GeneralResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data,
      };
}
