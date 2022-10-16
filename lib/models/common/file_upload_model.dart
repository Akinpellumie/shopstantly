// To parse this JSON data, do
//
//     final imageUploadModel = imageUploadModelFromJson(jsonString);

import 'dart:convert';

import 'file_data.dart';

FileUploadModel fileUploadModelFromJson(String str) =>
    FileUploadModel.fromJson(json.decode(str));

String fileUploadModelToJson(FileUploadModel data) =>
    json.encode(data.toJson());

class FileUploadModel {
  FileUploadModel({
    required this.status,
    required this.message,
    required this.data,
  });

  bool status;
  String message;
  FileData data;

  factory FileUploadModel.fromJson(Map<String, dynamic> json) =>
      FileUploadModel(
        status: json["status"],
        message: json["message"],
        data: FileData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
