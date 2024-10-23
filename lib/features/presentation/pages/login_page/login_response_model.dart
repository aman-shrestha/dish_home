// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
    Token token;
    User user;

  static var obs;

    LoginResponseModel({
        required this.token,
        required this.user,
    });

    LoginResponseModel copyWith({
        Token? token,
        User? user,
    }) => 
        LoginResponseModel(
            token: token ?? this.token,
            user: user ?? this.user,
        );

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        token: Token.fromJson(json["token"]),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "token": token.toJson(),
        "user": user.toJson(),
    };
}

class Token {
    String tokenType;
    String accessToken;
    String refreshToken;
    DateTime expiresIn;

    Token({
        required this.tokenType,
        required this.accessToken,
        required this.refreshToken,
        required this.expiresIn,
    });

    Token copyWith({
        String? tokenType,
        String? accessToken,
        String? refreshToken,
        DateTime? expiresIn,
    }) => 
        Token(
            tokenType: tokenType ?? this.tokenType,
            accessToken: accessToken ?? this.accessToken,
            refreshToken: refreshToken ?? this.refreshToken,
            expiresIn: expiresIn ?? this.expiresIn,
        );

    factory Token.fromJson(Map<String, dynamic> json) => Token(
        tokenType: json["tokenType"],
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
        expiresIn: DateTime.parse(json["expiresIn"]),
    );

    Map<String, dynamic> toJson() => {
        "tokenType": tokenType,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn.toIso8601String(),
    };
}

class User {
    String id;
    String name;
    String email;
    String phone;
    bool isKycVerified;
    List<dynamic> documents;
    int reward;
    BillingAddress billingAddress;
    List<dynamic> shippingAddress;
    bool gotOtt;
    bool hasPassword;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.phone,
        required this.isKycVerified,
        required this.documents,
        required this.reward,
        required this.billingAddress,
        required this.shippingAddress,
        required this.gotOtt,
        required this.hasPassword,
    });

    User copyWith({
        String? id,
        String? name,
        String? email,
        String? phone,
        bool? isKycVerified,
        List<dynamic>? documents,
        int? reward,
        BillingAddress? billingAddress,
        List<dynamic>? shippingAddress,
        bool? gotOtt,
        bool? hasPassword,
    }) => 
        User(
            id: id ?? this.id,
            name: name ?? this.name,
            email: email ?? this.email,
            phone: phone ?? this.phone,
            isKycVerified: isKycVerified ?? this.isKycVerified,
            documents: documents ?? this.documents,
            reward: reward ?? this.reward,
            billingAddress: billingAddress ?? this.billingAddress,
            shippingAddress: shippingAddress ?? this.shippingAddress,
            gotOtt: gotOtt ?? this.gotOtt,
            hasPassword: hasPassword ?? this.hasPassword,
        );

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        isKycVerified: json["is_kyc_verified"],
        documents: List<dynamic>.from(json["documents"].map((x) => x)),
        reward: json["reward"],
        billingAddress: BillingAddress.fromJson(json["billing_address"]),
        shippingAddress: List<dynamic>.from(json["shipping_address"].map((x) => x)),
        gotOtt: json["got_ott"],
        hasPassword: json["has_password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "is_kyc_verified": isKycVerified,
        "documents": List<dynamic>.from(documents.map((x) => x)),
        "reward": reward,
        "billing_address": billingAddress.toJson(),
        "shipping_address": List<dynamic>.from(shippingAddress.map((x) => x)),
        "got_ott": gotOtt,
        "has_password": hasPassword,
    };
}

class BillingAddress {
    BillingAddress();

    BillingAddress copyWith(
    ) => 
        BillingAddress(
        );

    factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
    );

    Map<String, dynamic> toJson() => {
    };
}
