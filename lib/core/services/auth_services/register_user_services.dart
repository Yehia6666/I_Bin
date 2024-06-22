import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class RegisterAcountUserService {
  late Dio dio;

  RegisterAcountUserService(this.dio) ;
    // BaseOptions options = BaseOptions(
    //   //baseUrl: baseUrl,
    //   receiveDataWhenStatusError: true,
    //   connectTimeout: const Duration(seconds: 5), // 20 seconds
    //   receiveTimeout: const Duration(seconds: 5), // 20 seconds
    //   validateStatus: (status) {
    //     // Allow all statuses, but you can customize this as needed
    //     return status != null && status < 500;
    //   },
    // );


  Future<void> registerAcountUserService({
    required String email,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String address,
  }) async {
  
      Response response = await dio.post(
        '$baseUrl/api/register',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
        ),
        data: json.encode({
          'email': email,
          'first_name': firstName,
          'last_name': lastName,
          'mobile': phoneNumber,
          'address': address,
        }),
      );

       if (response.statusCode == 200) {
        log('Response Data: ${json.encode(response.data)}');  
      } else {
        throw Exception('Failed to login: ${response.statusMessage}');
  }
  }
}
