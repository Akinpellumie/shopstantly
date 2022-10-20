import 'dart:io';
import 'package:http/http.dart' as http;

import '../utils/app_colors.dart';
import '../utils/helpers.dart';
import '../utils/shared_prefs.dart';
import 'api_url.dart';
import 'package:http_parser/http_parser.dart';

class RequestHelper {
  //save user token in constant
  static String fullName = '';
  static String userName = '';
  static String globalPunchInTime = '';
  static String profileImageUrl = '';
  static String email = '';
  static String phoneNumber = '';
  static String userID = '';

  static Future<http.Response?> postApi(String url, dynamic data) async {
    try {
      String token = await SharedPrefs.getString('userToken');
      var res = await http.post(Uri.parse(url),
          headers: url == ApiUrl.loginUrl
              ? {'Content-Type': 'application/json'}
              : {'Content-Type': 'application/json', 'Authorization': token},
          body: data);
      int status = getHttpStatus(res.statusCode);
      if (status == 200) {
        return res;
      } else if (status == 401) {
        return res;
      } else if (status == 400 && url == ApiUrl.loginUrl) {
        return res;
      } else {
        return res;
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  static Future<http.Response?> putApi(String url, dynamic data) async {
    try {
      String token = await SharedPrefs.getString('userToken');
      var res = await http.put(Uri.parse(url),
          headers: url == ApiUrl.loginUrl
              ? {'Content-Type': 'application/json'}
              : {'Content-Type': 'application/json', 'Authorization': token},
          body: data);
      int status = getHttpStatus(res.statusCode);
      if (status == 200) {
        return res;
      } else if (status == 401) {
        return res;
      } else if (status == 400 && url == ApiUrl.loginUrl) {
        return res;
      } else {
        return res;
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  static Future<http.Response?> postImageApi(
      String url, String fileName, File imageFile) async {
    try {
      //String token = await SharedPrefs.getString('userToken');
      var postUri = Uri.parse(url);

      http.MultipartRequest request = http.MultipartRequest("POST", postUri);

      http.MultipartFile multipartFile = await http.MultipartFile.fromPath(
        'file',
        imageFile.path,
        filename: fileName,
        contentType: MediaType('image', 'jpeg'),
      );

      request.files.add(multipartFile);

      //var response = await request.send();
      http.StreamedResponse streamResponse = await request.send();

      final response = await http.Response.fromStream(streamResponse);

      print(response.statusCode);
      int status = getHttpStatus(response.statusCode);
      if (status == 200) {
        return response;
      } else if (status == 401) {
        return response;
      } else if (status == 400 && url == ApiUrl.loginUrl) {
        return response;
      } else {
        return response;
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  static Future<http.Response?> getApi(String url) async {
    try {
      String token = await SharedPrefs.getString('userToken');
      var res = await http.get(
        Uri.parse(url),
        headers: url == ApiUrl.loginUrl
            ? {'Content-Type': 'application/json'}
            : {'Content-Type': 'application/json', 'Authorization': token},
      );
      if (res.statusCode == HttpStatus.ok) {
        return res;
      } else {
        displayToast(res.reasonPhrase!, kRedColor);
      }
    } on Exception catch (e) {
      print(e);
      displayToast("An error occurred", kRedColor);
      return null;
    }
    return null;
  }

  static Future<http.Response?> patchApi(String url, dynamic data) async {
    try {
      String token = await SharedPrefs.getString('userToken');
      var res = await http.patch(
        Uri.parse(url),
        headers: url == ApiUrl.loginUrl
            ? {'Content-Type': 'application/json'}
            : {'Content-Type': 'application/json', 'Authorization': token},
        body: data,
      );
      int status = getHttpStatus(res.statusCode);
      if (status == 200) {
        return res;
      } else if (status == 401) {
        return res;
      } else if (status == 400 && url == ApiUrl.loginUrl) {
        return res;
      } else {
        return res;
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}
