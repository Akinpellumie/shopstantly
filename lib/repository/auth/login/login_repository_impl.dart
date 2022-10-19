import 'dart:convert';

import '../../../config/api_url.dart';
import '../../../config/request_helper.dart';
import '../../../models/auth/login/login_model.dart';
import '../../../models/auth/login/login_response_model.dart';
import '../../../models/common/error_model.dart';
import '../../../utils/constants.dart';
import '../../../utils/helpers.dart';
import '../../../utils/tuple.dart';
import 'login_repository.dart';


class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<Tuple> loginUser(LoginModel user) async {
    try {
      var data = await RequestHelper.postApi(
          ApiUrl.loginUrl, jsonEncode(user.toJson()));
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = LoginResponseModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = ErrorModel.fromJson(jsonDecode(data.body));
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
