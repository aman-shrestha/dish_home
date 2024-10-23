// To parse this JSON data, do
//
//     final forgetVerifyOtpResponse = forgetVerifyOtpResponseFromJson(jsonString);

import 'dart:convert';

ForgetVerifyOtpResponse forgetVerifyOtpResponseFromJson(String str) =>
    ForgetVerifyOtpResponse.fromJson(json.decode(str));

String forgetVerifyOtpResponseToJson(ForgetVerifyOtpResponse data) =>
    json.encode(data.toJson());

class ForgetVerifyOtpResponse {
  bool success;
  Data data;

  ForgetVerifyOtpResponse({
    required this.success,
    required this.data,
  });

  ForgetVerifyOtpResponse copyWith({
    bool? success,
    Data? data,
  }) =>
      ForgetVerifyOtpResponse(
        success: success ?? this.success,
        data: data ?? this.data,
      );

  factory ForgetVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      ForgetVerifyOtpResponse(
        success: json["success"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
      };
}

class Data {
  String id;
  String resetToken;
  String userId;
  String userPhone;
  DateTime expires;
  int v;

  Data({
    required this.id,
    required this.resetToken,
    required this.userId,
    required this.userPhone,
    required this.expires,
    required this.v,
  });

  Data copyWith({
    String? id,
    String? resetToken,
    String? userId,
    String? userPhone,
    DateTime? expires,
    int? v,
  }) =>
      Data(
        id: id ?? this.id,
        resetToken: resetToken ?? this.resetToken,
        userId: userId ?? this.userId,
        userPhone: userPhone ?? this.userPhone,
        expires: expires ?? this.expires,
        v: v ?? this.v,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        resetToken: json["resetToken"],
        userId: json["userId"],
        userPhone: json["userPhone"],
        expires: DateTime.parse(json["expires"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "resetToken": resetToken,
        "userId": userId,
        "userPhone": userPhone,
        "expires": expires.toIso8601String(),
        "__v": v,
      };
}
