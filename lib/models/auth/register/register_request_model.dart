// To parse this JSON data, do
//
//     final registerRequestModel = registerRequestModelFromJson(jsonString);

import 'dart:convert';

RegisterRequestModel registerRequestModelFromJson(String str) => RegisterRequestModel.fromJson(json.decode(str));

String registerRequestModelToJson(RegisterRequestModel data) => json.encode(data.toJson());

class RegisterRequestModel {
    RegisterRequestModel({
        required this.fullName,
        required this.email,
        required this.phone,
        required this.password,
        required this.type,
    });

    String fullName;
    String email;
    String phone;
    String password;
    String type;

    factory RegisterRequestModel.fromJson(Map<String, dynamic> json) => RegisterRequestModel(
        fullName: json["fullName"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "email": email,
        "phone": phone,
        "password": password,
        "type": type,
    };
}
