import 'package:boarding1_machinetask/utilities/screen_custom_navigationbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';


Future<void> login(
  BuildContext context,
  TextEditingController emailController,
  TextEditingController passwordController,
) async {
  final email = emailController.text.trim();
  final password = passwordController.text.trim();

  print("email: $email");
  print("RAW PASSWORD: $password");

  try {
//     var data = FormData.fromMap({
//   'auth': 'ytftwfyuqwgisqwyf',
//   'username': 'abc1@gmail.com',
//   'password': 'abc1#ml',
//   'grant_type': 'password'
// });

// var dio = Dio();
// var response = await dio.request(
//   'https://script.google.com/macros/s/AKfycbwIrXjSZhEZytp_-c_FHZ4NmziPc8BrJQs_KgphOFegw2iMFQHG1DDGSFYVph3Ix_qb/exec',
//   options: Options(
//     method: 'POST',
//     followRedirects: true,
//     maxRedirects: 5
//   ),
//   data: data,
// );

// if (response.statusCode == 200) {
//   print(json.encode(response.data));
// }
// else {
//   print(response.statusMessage);
// }
    var data = {
      'auth': 'ytftwfyuqwgisqwyf',
      'email': email,
      'password': password,
      'grant_type': 'password',
    };

    var dio = Dio();

   

    var response = await dio.post(
      // 'https://script.google.com/macros/s/AKfycbwIrXjSZhEZytp_-c_FHZ4NmziPc8BrJQs_KgphOFegw2iMFQHG1DDGSFYVph3Ix_qb/exec',

      
     'https://sample-login-js.onrender.com/login',
      data: data,
      options: Options(
        followRedirects: true,
        validateStatus: (status) { return status! < 500; }
    ),
    );

    // print(response);
    // print("STATUS CODE: ${response.statusCode}");
    // print("RESPONSE DATA: ${response.data}");

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CustomNavigationbar()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Invalid Credentials")));
    }
  } catch (e) {
    print("ERROR: $e");
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Login failed. Try again.")));
  }
}


