import 'package:flutter/material.dart';
import 'package:i_bin1/data/model/get_user_model_service/get_user_model.dart';
import 'package:i_bin1/helper/api_method.dart';

class UpdateUserSrevices {
  Future<GetUserModel> updateUserSrevices(
      {@required String? city,
      @required String? name,
      @required String? image,
      @required String? phone}) async {
    Map<String, dynamic> data = await Api().post(
      lastNameInUrl: "/api/login",
      body: {
        'phone': phone,
        'name': name,
        'image': image,
        'city': city,
      },
      headers: {
        'Accept': 'application/json',
      },
      token: '44|Wn66QxlQEyU7hIGgzSaDNh6jNT73WwMRDeyGHBjn7a8c2840',
    );

    return GetUserModel.fromJson(data);
  }
}
