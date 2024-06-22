import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:i_bin1/core/class/states_request.dart';
import 'package:i_bin1/core/functions/check_internet.dart';
class Curd {
  Future< Either <StatusRequest , Map>> postData(String linkUrl , Map data ) async {
    try{
      if( await checkInternet()){
        var response =  await http.post(Uri.parse(linkUrl) , body: data ) ;
        if(response.statusCode == 200 || response.statusCode == 201 ){
          Map responsebody = jsonDecode(response.body) ;
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailuer) ;
        }
      } else {
        return const Left(StatusRequest.offlinefailuer) ;
      }
    }catch(_){
      return const Left(StatusRequest.serverfailuer) ;
    }
  }
}