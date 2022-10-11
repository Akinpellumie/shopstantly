// To parse this JSON data, do
//
//     final registerRequestModel = registerRequestModelFromJson(jsonString);

import 'dart:convert';

RegisterRequestModel registerRequestModelFromJson(String str) => RegisterRequestModel.fromJson(json.decode(str));

String registerRequestModelToJson(RegisterRequestModel data) => json.encode(data.toJson());

class RegisterRequestModel {
    RegisterRequestModel({
        required this.username,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.phone,
        required this.password,
    });

    String username;
    String firstName;
    String lastName;
    String email;
    String phone;
    String password;

    factory RegisterRequestModel.fromJson(Map<String, dynamic> json) => RegisterRequestModel(
        username: json["username"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "password": password,
    };
}
