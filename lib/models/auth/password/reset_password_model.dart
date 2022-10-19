// To parse this JSON data, do
//
//     final forgotPasswordModel = forgotPasswordModelFromJson(jsonString);

import 'dart:convert';

ResetPasswordModel resetPasswordModelFromJson(String str) =>
    ResetPasswordModel.fromJson(json.decode(str));

String resetPasswordModelToJson(ResetPasswordModel data) =>
    json.encode(data.toJson());

class ResetPasswordModel {
  ResetPasswordModel({
    required this.password,
  });

  String password;

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      ResetPasswordModel(
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "password": password,
      };
}
