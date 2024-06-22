import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:i_bin1/helper/local_shared_preferences.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class GetUserServices {
  Dio dio;

  GetUserServices(this.dio);

  Future< dynamic> getUserServices() async {
    try {

    //  SharedPrefHelper.getString(SharedPrefKeys.userToken) ;
      Response response = await dio.get(
        "$baseUrl/api/user",
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ${SharedPrefHelper.getString(SharedPrefKeys.userToken)}',
          },
        ),
      
      );

      log('Response Status Code: ${response.statusCode}''${response.data}');
      log('Response Data: ......');

      if (response.statusCode == 200) {
        var userData = response.data as Map<String, dynamic>;
        log('Response Data: $userData');
        print(userData);
        return userData;

      } else {
        throw Exception('Failed to login: ${response.statusMessage}');
      }
    } catch (e) {
      log('Error in getUserServices: $e');
      //throw Exception('Error fetching user data');
    }
  }
}