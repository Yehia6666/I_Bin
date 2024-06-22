
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:i_bin1/helper/local_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:i_bin1/data/model/get_user_model_service/user.dart'; 
import 'package:i_bin1/shared/componants/constant.dart';

class LoginVerifyService {
  late Dio dio;

  LoginVerifyService(this.dio);

  Future<void> loginVerifyService({
    required String email,
    required String otp,
  }) async {
    try {
      // Make the POST request
      Response response = await dio.post(
        '$baseUrl/api/login/verify',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
        data: {
          "email": email,
          "otp": otp,
        },
      );

      // Log the raw response data
      log('Raw Response Data: ${response.data}');

      // Check if the status code is 200
      if (response.statusCode == 200) {
        // Ensure response.data is a Map<String, dynamic>
        Map<String, dynamic> responseData;
        if (response.data is String) {
          responseData = json.decode(response.data) as Map<String, dynamic>;
          log('Response data is a string: ${response.data}');
        } else if (response.data is Map<String, dynamic>) {
          responseData = response.data as Map<String, dynamic>;
          log('Response data is a Map: ${response.data}');
        } else {
          log('Unexpected response data format');
          throw Exception('Unexpected response data format');
        }

        // Log the parsed response data
        log('Parsed Response Data: $responseData');

        // Parse the response data to GetUserToken object
        GetUserToken getUserToken = GetUserToken.fromJson(responseData);

        // Extract the token
        var token = getUserToken.userToken?.token;
        if (token == null) {
          throw Exception('Access token is null');
        }

        log('Access token: $token');

        // Save the token to shared preferences
        SharedPrefHelper.setData(SharedPrefKeys.userToken, token) ;
        
      } else {
        // Handle non-200 status codes
        throw Exception('Failed to login: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      // Handle Dio-specific exceptions
      log('DioException: ${e.response?.data['message'] ?? e.message}');
      final String errorMessage = e.response?.data['message'] ??
          'Oops, there was an error, please try again';
      throw Exception(errorMessage);
    } catch (e) {
      // Handle any other exceptions
      log('General Exception: $e');
      throw Exception('An unexpected error occurred: $e');
    }
  }
}












// import 'dart:convert';
// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:i_bin1/data/model/get_user_model_service/user.dart';
// import 'package:i_bin1/shared/componants/constant.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// class LoginVerifyService {
//   late Dio dio; 
//   LoginVerifyService(this.dio);
//   Future<void> loginVerifyService({
//     required String email,
//     required String otp,
//   }) async { 
//     try {
//       Response response = await dio.post(
//         '$baseUrl/api/login/verify',
//         options: Options(
//           headers: {
//             'Accept': 'application/json',
//             'Content-Type': 'application/json',
//           },
//         ),
//         data: {
//           "email": email,
//           "otp": otp,
//         },
//       );
//       if (response.statusCode == 200) {
//         GetUserToken getUserToken = GetUserToken.fromJson(response.data);
//         var token = getUserToken.userToken;
//         if (token == null) {
//           throw Exception('Access token is null');
//         }
//         log('Response Data: ${json.encode(response.data)}');
//         log('tokkkkkken : $token') ;
//        // await _saveToken(accessToken);
//         // CacheNetwork.insertToCache(key: "token", value: accessToken) ;
//       } else {
//         throw Exception('Failed to login: ${response.statusMessage}');
//       }
//     } on DioException catch (e) {
//       log('DioException: ${e.response?.data['message'] ?? e.message}');
//       final String errorMessage = e.response?.data['message'] ??
//           'Oops, there was an error, please try again';
//       throw Exception(errorMessage);
//     } catch (e) {
//       log('General Exception: $e');
//       throw Exception('An unexpected error occurred: $e');
//     }
//   }
// }
// Future<void> _saveToken(String token) async {
//   final pref = await SharedPreferences.getInstance();
//   const key = "access_token";
//   await pref.setString(key, token);
// }
  // Future<void> readToken() async {
  //   final pref = await SharedPreferences.getInstance();
  //   const key = 'access_token';
  //   final token = pref.getString(key); // Use getString instead of get
  //   log('readToken: $token');
  // }