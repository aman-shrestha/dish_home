class getMyDocumentsModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? customerId;
  String? customerType;
  bool? isKycVerified;
  List<String>? documents;
  int? reward;
  BillingAddress? billingAddress;
  List<ShippingAddress>? shippingAddress;
  bool? gotOtt;
  bool? hasPassword;

  getMyDocumentsModel(
      {this.id,
        this.name,
        this.email,
        this.phone,
        this.customerId,
        this.customerType,
        this.isKycVerified,
        this.documents,
        this.reward,
        this.billingAddress,
        this.shippingAddress,
        this.gotOtt,
        this.hasPassword});

  getMyDocumentsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    customerId = json['customer_id'];
    customerType = json['customer_type'];
    isKycVerified = json['is_kyc_verified'];
    documents = json['documents'].cast<String>();
    reward = json['reward'];
    billingAddress = json['billing_address'] != null
        ? new BillingAddress.fromJson(json['billing_address'])
        : null;
    if (json['shipping_address'] != null) {
      shippingAddress = <ShippingAddress>[];
      json['shipping_address'].forEach((v) {
        shippingAddress!.add(new ShippingAddress.fromJson(v));
      });
    }
    gotOtt = json['got_ott'];
    hasPassword = json['has_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['customer_id'] = this.customerId;
    data['customer_type'] = this.customerType;
    data['is_kyc_verified'] = this.isKycVerified;
    data['documents'] = this.documents;
    data['reward'] = this.reward;
    if (this.billingAddress != null) {
      data['billing_address'] = this.billingAddress!.toJson();
    }
    if (this.shippingAddress != null) {
      data['shipping_address'] =
          this.shippingAddress!.map((v) => v.toJson()).toList();
    }
    data['got_ott'] = this.gotOtt;
    data['has_password'] = this.hasPassword;
    return data;
  }
}

class BillingAddress {
  String? name;
  String? address;
  String? street;
  String? landmark;
  String? district;
  String? province;

  BillingAddress(
      {this.name,
        this.address,
        this.street,
        this.landmark,
        this.district,
        this.province});

  BillingAddress.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    street = json['street'];
    landmark = json['landmark'];
    district = json['district'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['street'] = this.street;
    data['landmark'] = this.landmark;
    data['district'] = this.district;
    data['province'] = this.province;
    return data;
  }
}

class ShippingAddress {
  bool? sameAsBilling;
  String? sId;
  String? name;
  String? address;
  String? street;
  String? landmark;
  String? district;
  String? province;

  ShippingAddress(
      {this.sameAsBilling,
        this.sId,
        this.name,
        this.address,
        this.street,
        this.landmark,
        this.district,
        this.province});

  ShippingAddress.fromJson(Map<String, dynamic> json) {
    sameAsBilling = json['same_as_billing'];
    sId = json['_id'];
    name = json['name'];
    address = json['address'];
    street = json['street'];
    landmark = json['landmark'];
    district = json['district'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['same_as_billing'] = this.sameAsBilling;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['address'] = this.address;
    data['street'] = this.street;
    data['landmark'] = this.landmark;
    data['district'] = this.district;
    data['province'] = this.province;
    return data;
  }
}
