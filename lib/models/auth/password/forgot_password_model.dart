// To parse this JSON data, do
//
//     final forgotPasswordModel = forgotPasswordModelFromJson(jsonString);

import 'dart:convert';

ForgotPasswordModel forgotPasswordModelFromJson(String str) => ForgotPasswordModel.fromJson(json.decode(str));

String forgotPasswordModelToJson(ForgotPasswordModel data) => json.encode(data.toJson());

class ForgotPasswordModel {
    ForgotPasswordModel({
        required this.email,
    });

    String email;

    factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) => ForgotPasswordModel(
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
    };
}
