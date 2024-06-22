import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:i_bin1/helper/local_shared_preferences.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class LogOutServices {
  Dio dio;
  LogOutServices(this.dio);

  Future<void> logOutServices() async {

   // var token = CacheNetwork.getCacheData(key: 'token') ;
    Response response = await Dio().post(
      '$baseUrl/api/logout',
      options: Options(
        headers: {
          'Accept': 'application/json',
          'Authorization':
              'Bearer ${SharedPrefHelper.getString(SharedPrefKeys.userToken)}',
        },
      ),
      data: jsonEncode({}),
    );

    if (response.statusCode == 200) {
      log('Response Data: ${json.encode(response.data)}');
    } else {
      throw Exception('Failed to login: ${response.statusMessage}');
    }
  }
}
