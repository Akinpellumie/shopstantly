// To parse this JSON data, do
//
//     final activationModel = activationModelFromJson(jsonString);

import 'dart:convert';

import 'package:shopstantly_app/models/auth/register/register_data.dart';

ActivationModel activationModelFromJson(String str) => ActivationModel.fromJson(json.decode(str));

String activationModelToJson(ActivationModel data) => json.encode(data.toJson());

class ActivationModel {
    ActivationModel({
        required this.status,
        required this.message,
        required this.data,
    });

    bool status;
    String message;
    RegisterData data;

    factory ActivationModel.fromJson(Map<String, dynamic> json) => ActivationModel(
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
