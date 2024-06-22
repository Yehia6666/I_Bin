import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class ResendEmailCodeService {
  late Dio dio;

  ResendEmailCodeService(this.dio) ;

  Future<void> resendEmailCodeService({
    required String email,
  }) async {
    try {
      Response response = await dio.post(
        '$baseUrl/api/email/resend',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'email': email,
        },
      );

      if (response.statusCode == 200) {
        log(json.encode(response.data));
      } else if (response.statusCode == 302) {
        // Handle redirection if needed
        String? location = response.headers['location']?.first;
        if (location != null) {
          log('Redirecting to $location');
          // You can make another request to the new location if necessary
        }
      } else {
        log('${response.statusMessage}');
      }
    } on DioException catch (e) {
      log('${e.message}');
      if (e.response != null) {
        log('Error response: ${e.response?.data}');
      }
      throw Exception('Failed to resend email');
    } catch (e) {
      log(e.toString());
      throw Exception('An unexpected error occurred');
    }
  }
}
