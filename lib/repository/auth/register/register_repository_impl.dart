import 'dart:convert';

import 'package:shopstantly_app/models/auth/register/username_model.dart';
import 'package:shopstantly_app/models/auth/register/validation_model.dart';
import 'package:shopstantly_app/repository/auth/register/register_repository.dart';

import '../../../config/api_url.dart';
import '../../../config/request_helper.dart';
import '../../../models/auth/register/complete_profile_request_model.dart';
import '../../../models/auth/register/complete_profile_response_model.dart';
import '../../../models/auth/register/register_error_model.dart';
import '../../../models/auth/register/register_request_model.dart';
import '../../../models/auth/register/register_response_model.dart';
import '../../../models/common/error_model.dart';
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

  @override
  Future<Tuple> completeAccountRegistration(
      CompleteProfileRequestModel account, String userId) async {
    try {
      String url = "${ApiUrl.completeRegistrationUrl}/$userId";
      var data = await RequestHelper.postApi(url, jsonEncode(account.toJson()));
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result =
            CompleteProfileResponseModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = ErrorModel.fromJson(jsonDecode(data.body));
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
  Future<Tuple> usernameAvailability(String username) async {
    try {
      String url = '${ApiUrl.usernameAvailabilityUrl}/$username';
      var data = await RequestHelper.getApi(url);
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = UsernameModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = UsernameModel.fromJson(jsonDecode(data.body));
        return Tuple(
            response: null, error: _error.message, statusCode: data.statusCode);
      } else {
        return Tuple(response: null, error: kErrorMessage, statusCode: 500);
      }
    } catch (e) {
      print(e);
      return Tuple(response: null, error: kExceptionMessage, statusCode: 0);
    }
  }

  @override
  Future<Tuple> activateAccount(String userID, String otp) async {
    try {
      String url = '${ApiUrl.activateAcctUrl}/$userID/$otp';
      var data = await RequestHelper.getApi(url);
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = ValidationModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = ValidationModel.fromJson(jsonDecode(data.body));
        return Tuple(
            response: null, error: _error.message, statusCode: data.statusCode);
      } else {
        return Tuple(response: null, error: kErrorMessage, statusCode: 500);
      }
    } catch (e) {
      print(e);
      return Tuple(response: null, error: kExceptionMessage, statusCode: 0);
    }
  }

  @override
  Future<Tuple> resendVerificationCode(String userID) async {
    try {
      String url = '${ApiUrl.resendActivationCodeUrl}/$userID';
      var data = await RequestHelper.getApi(url);
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = ValidationModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = ValidationModel.fromJson(jsonDecode(data.body));
        return Tuple(
            response: null, error: _error.message, statusCode: data.statusCode);
      } else {
        return Tuple(response: null, error: kErrorMessage, statusCode: 500);
      }
    } catch (e) {
      print(e);
      return Tuple(response: null, error: kExceptionMessage, statusCode: 0);
    }
  }
}
