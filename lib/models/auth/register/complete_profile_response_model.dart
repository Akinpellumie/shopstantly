// To parse this JSON data, do
//
//     final completeProfileResponseModel = completeProfileResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:shopstantly_app/models/auth/register/complete_profile_data.dart';

CompleteProfileResponseModel completeProfileResponseModelFromJson(String str) => CompleteProfileResponseModel.fromJson(json.decode(str));

String completeProfileResponseModelToJson(CompleteProfileResponseModel data) => json.encode(data.toJson());

class CompleteProfileResponseModel {
    CompleteProfileResponseModel({
        required this.status,
        required this.message,
        required this.data,
    });

    bool status;
    String message;
    CompleteProfileData data;

    factory CompleteProfileResponseModel.fromJson(Map<String, dynamic> json) => CompleteProfileResponseModel(
        status: json["status"],
        message: json["message"],
        data: CompleteProfileData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}
