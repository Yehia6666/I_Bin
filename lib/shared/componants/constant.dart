import 'package:flutter/material.dart';

const kPrimaryColor = LinearGradient(
  begin: Alignment(0.00, 1.00),
  end: Alignment(0, -1),
  colors: [Color(0xFF03B04E), Color(0xFF02C320),],
);


const baseUrl = 'https://ibag.future-co.org';

bool isLoggedInUser = false;

class SharedPrefKeys {
  static const String userToken = 'userToken';
}