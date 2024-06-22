import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class LoginUserServices {
  late Dio dio;

  LoginUserServices(this.dio);

  Future<void> loginService({
    required String email,
  }) async {
   
      Response response = await dio.post(
        '$baseUrl/api/login',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'email': email,
        },
      );
      if (response.statusCode == 200) {
        
        log('Response Data: ${json.encode(response.data)}');  
      } else {
        throw Exception('Failed to login: ${response.statusMessage}');
      }
  
  }

 
}

 // Future<void> _saveToken(String token) async {
  //   final pref = await SharedPreferences.getInstance();
  //   const key = "access_token";
  //   await pref.setString(key, token);
  // }

  // Future<void> readToken() async {
  //   final pref = await SharedPreferences.getInstance();
  //   const key = 'access_token';
  //   final token = pref.getString(key);  // Use getString instead of get
  //   log('readToken: $token');
  // }