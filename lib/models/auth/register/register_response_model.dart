// To parse this JSON data, do
//
//     final registerResponseModel = registerResponseModelFromJson(jsonString);

import 'dart:convert';

import 'register_data.dart';

RegisterResponseModel registerResponseModelFromJson(String str) => RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) => json.encode(data.toJson());

class RegisterResponseModel {
    RegisterResponseModel({
        required this.status,
        required this.message,
        required this.data,
    });

    bool status;
    String message;
    RegisterData data;

    factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => RegisterResponseModel(
        status: json["status"],
        message: json["message"],
        data: RegisterData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}
