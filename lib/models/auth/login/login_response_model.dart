// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:shopstantly_app/models/auth/login/active_user_data.dart';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
    LoginResponseModel({
        required this.status,
        required this.message,
        required this.data,
    });

    bool status;
    String message;
    ActiveUserData data;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        status: json["status"],
        message: json["message"],
        data: ActiveUserData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}
