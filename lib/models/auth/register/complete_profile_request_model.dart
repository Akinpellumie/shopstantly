// To parse this JSON data, do
//
//     final completeProfileModel = completeProfileModelFromJson(jsonString);

import 'dart:convert';

CompleteProfileRequestModel completeProfileModelFromJson(String str) =>
    CompleteProfileRequestModel.fromJson(json.decode(str));

String completeProfileModelToJson(CompleteProfileRequestModel data) =>
    json.encode(data.toJson());

class CompleteProfileRequestModel {
  CompleteProfileRequestModel({
    required this.country,
    required this.state,
    required this.city,
    required this.bioInfo,
    required this.profilePhoto,
    required this.coverPhoto,
  });

  String country;
  String state;
  String city;
  String bioInfo;
  String profilePhoto;
  String coverPhoto;

  factory CompleteProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      CompleteProfileRequestModel(
        country: json["country"],
        state: json["state"],
        city: json["city"],
        bioInfo: json["bioInfo"],
        profilePhoto: json["profilePhoto"],
        coverPhoto: json["coverPhoto"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "state": state,
        "city": city,
        "bioInfo": bioInfo,
        "profilePhoto": profilePhoto,
        "coverPhoto": coverPhoto,
      };
}
