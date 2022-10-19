import 'dart:convert';

import 'package:shopstantly_app/models/auth/password/forgot_password_model.dart';
import 'package:shopstantly_app/models/common/general_response.dart';
import 'package:shopstantly_app/repository/auth/password/password_repository.dart';

import '../../../config/api_url.dart';
import '../../../config/request_helper.dart';
import '../../../models/auth/password/reset_password_model.dart';
import '../../../utils/constants.dart';
import '../../../utils/helpers.dart';
import '../../../utils/tuple.dart';

class PasswordRepositoryImpl implements PasswordRepository {
  @override
  Future<Tuple> forgotPasswordAsync(ForgotPasswordModel request) async {
    try {
      var data = await RequestHelper.postApi(
          ApiUrl.forgotPasswordUrl, jsonEncode(request.toJson()));
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = GeneralResponseModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = GeneralResponseModel.fromJson(jsonDecode(data.body));
        return Tuple(response: null, error: _error.message, statusCode: 400);
      } else {
        return Tuple(response: null, error: kErrorMessage, statusCode: 500);
      }
    } catch (e) {
      print(e);
      return Tuple(response: null, error: kExceptionMessage, statusCode: 0);
    }
  }

  @override
  Future<Tuple> resetPasswordAsync(
      ResetPasswordModel request, String otp) async {
    try {
      String url = "${ApiUrl.resetPasswordUrl}/$otp";
      var data = await RequestHelper.putApi(url, jsonEncode(request.toJson()));
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = GeneralResponseModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = GeneralResponseModel.fromJson(jsonDecode(data.body));
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
