import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:i_bin1/helper/local_shared_preferences.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class UpdateUserServices {
  Dio dio;
  UpdateUserServices(this.dio);

  updateUserServices({
    String? firstName,
    String? lastName,
    String? address,
    String? phoneNumber,
    String? image,
  }) async {
    try {
      FormData formData = FormData();
      Response response = await Dio().post(
        '$baseUrl/api/user',
        data: {
          formData = FormData.fromMap({
            '_method': 'PUT',
            'files': [
              await MultipartFile.fromFile(
                  '$image',
                  filename:
                      '$image') ,
            ],
            'first_name': firstName,
            'last_name': lastName,
            'mobile': phoneNumber,
            'address': address,
          }),
        },
        options: Options(headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${SharedPrefHelper.getString(SharedPrefKeys.userToken)}',
        }),
      );

      if (response.statusCode == 200) {
        log('this is success : ${json.encode(response.data)}');
      } else {
        throw Exception('Failed to Register: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      log('DioException: ${e.response?.data['message'] ?? e.message}');
      final String errorMessage = e.response?.data['message'] ??
          'Oops, there was an error, please try again';
      throw Exception(errorMessage);
    } catch (e) {
      log('General Exception: $e');
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
