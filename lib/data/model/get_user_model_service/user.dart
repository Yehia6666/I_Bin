class User {
  int? id;
  String? name;
  String? email;
  DateTime? emailVerifiedAt;
  dynamic otp;
  dynamic twoFactorConfirmedAt;
  dynamic currentTeamId;
  dynamic profilePhotoPath;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic provider;
  dynamic providerId;
  dynamic deletedAt;
  int? isProvider;
  dynamic mobile;
  dynamic address;
  String? profilePhotoUrl;
  String? profileImage;
  int? totalOrdersPoints;
  int? totalOrderItemsKg;
  List<dynamic>? media;

  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.otp,
    this.twoFactorConfirmedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.createdAt,
    this.updatedAt,
    this.provider,
    this.providerId,
    this.deletedAt,
    this.isProvider,
    this.mobile,
    this.address,
    this.profilePhotoUrl,
    this.profileImage,
    this.totalOrdersPoints,
    this.totalOrderItemsKg,
    this.media,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      otp: json['otp'] as dynamic,
      twoFactorConfirmedAt: json['two_factor_confirmed_at'] as dynamic,
      currentTeamId: json['current_team_id'] as dynamic,
      profilePhotoPath: json['profile_photo_path'] as dynamic,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      provider: json['provider'] as dynamic,
      providerId: json['provider_id'] as dynamic,
      deletedAt: json['deleted_at'] as dynamic,
      isProvider: json['is_provider'] as int?,
      mobile: json['mobile'] as dynamic,
      address: json['address'] as dynamic,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      profileImage: json['profile_image'] as String?,
      totalOrdersPoints: json['total_orders_points'] as int?,
      totalOrderItemsKg: json['total_order_items_kg'] as int?,
      media: json['media'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'email_verified_at': emailVerifiedAt?.toIso8601String(),
      'otp': otp,
      'two_factor_confirmed_at': twoFactorConfirmedAt,
      'current_team_id': currentTeamId,
      'profile_photo_path': profilePhotoPath,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'provider': provider,
      'provider_id': providerId,
      'deleted_at': deletedAt,
      'is_provider': isProvider,
      'mobile': mobile,
      'address': address,
      'profile_photo_url': profilePhotoUrl,
      'profile_image': profileImage,
      'total_orders_points': totalOrdersPoints,
      'total_order_items_kg': totalOrderItemsKg,
      'media': media,
    };
  }
}
class UserToken {
  String? token;

  UserToken({this.token});

  factory UserToken.fromJson(Map<String, dynamic> json) {
    return UserToken(token: json['access_token']);
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': token,
    };
  }
}

class GetUserToken {
  UserToken? userToken;

  GetUserToken({this.userToken});

  factory GetUserToken.fromJson(Map<String, dynamic> json) {
    return GetUserToken(
      userToken: json['access_token'] == null
          ? null
          : UserToken.fromJson({'access_token': json['access_token']}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': userToken?.toJson(),
    };
  }
}