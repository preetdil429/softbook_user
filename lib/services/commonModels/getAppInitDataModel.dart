// To parse this JSON data, do
//
//     final getAppInitDataModel = getAppInitDataModelFromJson(jsonString);

import 'dart:convert';

GetAppInitDataModel getAppInitDataModelFromJson(String str) =>
    GetAppInitDataModel.fromJson(json.decode(str));

String getAppInitDataModelToJson(GetAppInitDataModel data) =>
    json.encode(data.toJson());

class GetAppInitDataModel {
  GetAppInitDataModel({
    this.code,

    this.message,
  });

  int? code;

  String? message;

  GetAppInitDataModel.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    message = json["message"];
  }

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}

