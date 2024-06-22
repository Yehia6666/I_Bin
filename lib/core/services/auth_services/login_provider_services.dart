import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class LoginProviderServicses {
  Dio dio;
  LoginProviderServicses(this.dio);

  loginProviderServices({
    required String email,
    required String password,
  }) async {
    // try {
      Response response = await dio.post('$baseUrl/api/login',
          options: Options(headers: {
            'Content-Type': 'application/json',
          }),
          data: {
            'email': email,
            'password': password,
          });

      if (response.statusCode == 200) {
        log(json.encode(response.data));
       // _saveToken(response.data['access_token']);
      } else {
        log('${response.data['message']}') ;
        throw Exception(jsonDecode(response.data['message']));
      }
    // } on DioException catch (e) {
    //   log((e.response?.data['message']).toInt());
    //   final String errorMessage = e.response?.data['message'] ??
    //       'oops there was an error, please try again';
    //   throw Exception(errorMessage);
    // } catch (e) {
    //   log(e.toString());
    //   throw Exception(e.toString());
    // }
  }

  // _saveToken(String token) async {
  //   final pref = await SharedPreferences.getInstance();
  //   const key = "access_token";
  //   final value = token;
  //   pref.setString(key, value);
  // }
  // readToken() async {
  //   final pref = await SharedPreferences.getInstance();
  //   const key = 'access_token';
  //   final token = pref.get(key);
  //   log('readToken: $token');
  // }

}
