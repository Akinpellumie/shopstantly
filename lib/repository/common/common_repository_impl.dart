import 'dart:convert';
import 'dart:io';

import 'package:shopstantly_app/models/common/file_upload_model.dart';

import '../../config/api_url.dart';
import '../../config/request_helper.dart';
import '../../utils/constants.dart';
import '../../utils/helpers.dart';
import '../../utils/tuple.dart';
import 'common_repository.dart';

class CommonRepositoryImpl implements CommonRepository {
  @override
  Future<Tuple> uploadFileToServer(
      File file, String fileName, String userId) async {
    try {
      String url = "${ApiUrl.fileUploadUrl}/$userId";
      var data = await RequestHelper.postImageApi(
        url,
        fileName,
        file,
      );
      int status = getHttpStatus(data!.statusCode);
      if (status == 200) {
        var result = FileUploadModel.fromJson(jsonDecode(data.body));
        return Tuple(response: result, error: null, statusCode: 200);
      } else if (status >= 400 && status <= 409) {
        var _error = FileUploadModel.fromJson(jsonDecode(data.body));
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
