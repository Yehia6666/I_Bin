import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class Api {
  late Dio dio;
  Api() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20), // 20 seconds
      receiveTimeout: const Duration(seconds: 20), // 20 seconds
    );
    dio = Dio(options);
  }

  Future<dynamic> get({required String lastNameInUrl , @required String? token ,}) async {
    try {

      Map<String , dynamic> headers = {} ;
      if(token != null) {
        headers.addAll({'Authorization' : 'Bearer ${token}'}) ;
      }

      Response response = await Dio().get(lastNameInUrl);
      if (response.statusCode == 200) {
        return json.encode(response.data);
      } else {
        throw Exception(jsonDecode(response.data['message']));
      }
    } on DioException catch (e) {
      log(e.response?.data['message']);
      final String errorMessage = e.response?.data['message'] ??
          'oops there was an error, please try again';

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }




  Future<dynamic> post({
    required String lastNameInUrl,
    @required dynamic body,
    @required String? token,
    @required Map<String, String>? headers , 
  }) async {
    Map<String, String> headers = {};

      headers.addAll({
        'Content-Type': 'application/x-www-form-urlencoded' ,
      }) ;
    if (token != null) {
      headers.addAll({'Authhorization': 'Bearer $token'});
    }

    try {
      Response response = await Dio().post(
        lastNameInUrl,
        options: Options(
          headers: headers,
        ),
        data: body,
      );

      if (response.statusCode == 200) {
      // Ensure response.data is of the expected type
      if (response.data is Map<String, dynamic>) {
        Map<String, dynamic> data = response.data;
        log(json.encode(data));
        return data;
      } else {
        // Handle cases where response.data is not a JSON object
        log('Unexpected response data type');
        throw Exception('Unexpected response data type');
      }
    } else {
      // Handle non-200 status codes with proper message extraction
      String message = response.data['message'] ?? 'Unknown error';
      throw Exception(
          'There is a problem with status code ${response.statusCode} and with message $message');
    }
    } on DioError catch (e) {
    String errorMessage = 'Oops, there was an error, please try again';
    if (e.response?.data is Map<String, dynamic>) {
      errorMessage = e.response?.data['message'] ?? errorMessage;
    }
    log(errorMessage);
    throw Exception(errorMessage);
  } catch (e) {
    log(e.toString());
    throw Exception(e.toString());
  }
}


 Future<dynamic> put({
    required String lastNameInUrl,
    @required dynamic body,
    @required String? token,
     @required Map<String, String>? headers , 
  }) async {
    
    try {

      Map<String, String> headers = {};

      headers.addAll({
        'Accept': 'application/json',
      }) ;
    if (token != null) {
      headers.addAll({'Authhorization': 'Bearer $token'});
    }

      Response response = await Dio().put(
        lastNameInUrl,
        options: Options(
          headers: headers,
        ),
        data: body,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.data);
        log(json.encode(response.data));

        return data;
      } else {
        throw Exception(
            'There is a problem with status code ${response.statusCode} and with body ${jsonDecode(response.data['message'])} ');
      }
    } on DioException catch (e) {
      log((e.response?.data['message']));
      final String errorMessage = e.response?.data['message'] ??
          'oops there was an error, please try again';

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }
}
