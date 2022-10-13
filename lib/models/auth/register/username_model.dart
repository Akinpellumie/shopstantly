import 'dart:convert';

UsernameModel usernameModelFromJson(String str) => UsernameModel.fromJson(json.decode(str));

String usernameModelToJson(UsernameModel data) => json.encode(data.toJson());

class UsernameModel {
    UsernameModel({
        required this.status,
        required this.message,
        this.data,
    });

    bool status;
    String message;
    dynamic data;

    factory UsernameModel.fromJson(Map<String, dynamic> json) => UsernameModel(
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
