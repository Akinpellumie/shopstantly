import 'dart:convert';

import 'package:shopstantly_app/repository/auth/register/register_repository.dart';

import '../../../config/api_url.dart';
import '../../../config/request_helper.dart';
import '../../../models/auth/register/register_error_model.dart';
import '../../../models/auth/register/register_request_model.dart';
import '../../../models/auth/register/register_response_model.dart';
import '../../../utils/constants.dart';
import '../../../utils/helpers.dart';
import '../../../utils/tuple.dart';


class RegisterRepositoryImpl implements RegisterRepository {
  @override
  Future<Tuple> createAccount(RegisterRequestModel newUser) async {
    try {
      var data = await RequestHelper.postApi(
          ApiUrl.registerUrl, jsonEncode(newUser.toJson()));
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = RegisterResponseModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = RegisterErrorModel.fromJson(jsonDecode(data.body));
        return Tuple(response: null, error: _error.message, statusCode: 400);
      } else {
        return Tuple(response: null, error: kErrorMessage, statusCode: 500);
      }
    } catch (e) {
      print(e);
      return Tuple(response: null, error: kExceptionMessage, statusCode: 0);
    }
  }
}
