// import 'package:dio/dio.dart';
// import 'dart:convert';

// login()async{
//   var headers = {
//   'Content-Type': 'application/x-www-form-urlencoded'
// };
// var data = {
//   'auth': 'ytftwfyuqwgisqwyf',
//   'username': 'admin@example.com',
//   'password': 'admin123',
//   'grant_type': 'password'
// };
// var dio = Dio();
// var response = await dio.request(
//   'https://script.google.com/macros/s/AKfycbz3iMHVhgxbYQI-67SjIpU3yrlgxEPMwLrwZUJfhYXBWnME1CSHYEtHCxPvIqslbhwp/exec',
//   options: Options(
//     method: 'POST',
//     headers: headers,
//     followRedirects: true,
//     maxRedirects: 5,
//   ),
//   data: data,
// );

// if (response.statusCode == 200) {
//   print(json.encode(response.data));
// }
// else {
//   print(response.statusMessage);
// }
// }