import 'user.dart';

class GetUserModel {
  User? userModel;

  GetUserModel({this.userModel});

  factory GetUserModel.fromJson(
      Map<String, dynamic> json) {
    return GetUserModel(
      userModel: json['user'] == null
          ? null
          : User.fromJson( json['user'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': userModel?.toJson(),
    };
  }
}
