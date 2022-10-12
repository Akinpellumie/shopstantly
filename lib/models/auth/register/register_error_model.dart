// To parse this JSON data, do
//
//     final registerErrorModel = registerErrorModelFromJson(jsonString);

import 'dart:convert';

RegisterErrorModel registerErrorModelFromJson(String str) => RegisterErrorModel.fromJson(json.decode(str));

String registerErrorModelToJson(RegisterErrorModel data) => json.encode(data.toJson());

class RegisterErrorModel {
    RegisterErrorModel({
        required this.status,
        required this.message,
        required this.statusCode,
        required this.timestamp,
    });

    String status;
    List<String> message;
    int statusCode;
    DateTime timestamp;

    factory RegisterErrorModel.fromJson(Map<String, dynamic> json) => RegisterErrorModel(
        status: json["status"],
        message: List<String>.from(json["message"].map((x) => x)),
        statusCode: json["statusCode"],
        timestamp: DateTime.parse(json["timestamp"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": List<dynamic>.from(message.map((x) => x)),
        "statusCode": statusCode,
        "timestamp": timestamp.toIso8601String(),
    };
}
