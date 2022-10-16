import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:shopstantly_app/models/common/file_upload_model.dart';

import '../../repository/auth/register/register_repository_impl.dart';
import '../../repository/common/common_repository_impl.dart';
import '../../utils/show_snackbar.dart';
import '../../utils/snackbar_content_type.dart';
import '../../utils/tuple.dart';

class CompleteProfileViewModel extends ChangeNotifier {
  late TextEditingController _bioInfoController;
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_completeProFormKey');
  final RegisterRepositoryImpl _registerRepoImpl = RegisterRepositoryImpl();
  final CommonRepositoryImpl _fileRepoImpl = CommonRepositoryImpl();

  TextEditingController get bioInfoController => _bioInfoController;
  GlobalKey<FormState> get formKey => _formKey;

  String dpImagePath = '';
  String bgImagePath = '';

  bool _sendingRequest = false;
  bool get sendingRequest => _sendingRequest;
  void _toggleSendingRequest(bool value) {
    _sendingRequest = value;
    notifyListeners();
  }

  bool _uploadingBg = false;
  bool get uploadingBg => _uploadingBg;
  void _toggleUploadingBg(bool value) {
    _uploadingBg = value;
    notifyListeners();
  }

  bool _uploadingDp = false;
  bool get uploadingDp => _uploadingDp;
  void _toggleUploadingDp(bool value) {
    _uploadingDp = value;
    notifyListeners();
  }

  double? _bgUploadProgress = 0;
  get bgUploadProgress => _bgUploadProgress;
  void _setBgUploadProgress(double? val) {
    _bgUploadProgress = val;
    notifyListeners();
  }

  double? _dpUploadProgress = 0;
  get dpUploadProgress => _dpUploadProgress;
  void _setDpUploadProgress(double? val) {
    _dpUploadProgress = val;
    notifyListeners();
  }

  CompleteProfileViewModel() {
    _bioInfoController = TextEditingController();
  }
  void selectBgImage(BuildContext context) async {
    try {
      //final _file = await FilePicker.
    } catch (ex) {
      print(ex);
    }
  }

  Future<bool> uploadBgImage(
    BuildContext context,
    String fileName,
    File _file,
  ) async {
    try {
      _toggleUploadingBg(true);
      Tuple result = await _fileRepoImpl.uploadFileToServer(
        _file,
        fileName,
      );
      if (result.response != null && result.statusCode == 200) {
        FileUploadModel response = result.response as FileUploadModel;
        if (response.status) {
          bgImagePath = response.data.filepath;
          return response.status;
        } else {
          showsnackbar(context, response.message, SnackbarContentType.failure);
          return response.status;
        }
      } else if (result.statusCode != 200 || result.error != null) {
        showsnackbar(context, result.error, SnackbarContentType.failure);
        return false;
      } else {
        showsnackbar(
          context,
          "Something went wrong while uploading your image. Please check your internet and try again.",
          SnackbarContentType.failure,
        );
        return false;
      }
    } catch (ex) {
      print(ex);
      showsnackbar(
        context,
        "An error occured while uploading image. Please check your internet and try again.",
        SnackbarContentType.failure,
      );
      return false;
    } finally {
      _toggleUploadingBg(false);
    }
  }

  Future<bool> uploadDpImage(
    BuildContext context,
    String fileName,
    File _file,
  ) async {
    try {
      _toggleUploadingDp(true);
      Tuple result = await _fileRepoImpl.uploadFileToServer(
        _file,
        fileName,
      );
      if (result.response != null && result.statusCode == 200) {
        FileUploadModel response = result.response as FileUploadModel;
        if (response.status) {
          dpImagePath = response.data.filepath;
          return response.status;
        } else {
          showsnackbar(context, response.message, SnackbarContentType.failure);
          return response.status;
        }
      } else if (result.statusCode != 200 || result.error != null) {
        showsnackbar(context, result.error, SnackbarContentType.failure);
        return false;
      } else {
        showsnackbar(
          context,
          "Something went wrong while uploading your image. Please check your internet and try again.",
          SnackbarContentType.failure,
        );
        return false;
      }
    } catch (ex) {
      print(ex);
      showsnackbar(
        context,
        "An error occured while uploading image. Please check your internet and try again.",
        SnackbarContentType.failure,
      );
      return false;
    } finally {
      _toggleUploadingDp(false);
    }
  }

  // Future<void> uploadDpImage(
  //     BuildContext context, String fileName, File _image, String url) async {
  //   try {
  //     _toggleUploadingDp(true);
  //     _setDpUploadProgress(null);
  //     // get file length
  //     var contentLength = await _image.length();

  //     http.MultipartRequest request =
  //         http.MultipartRequest("POST", Uri.parse(url));

  //     http.MultipartFile multipartFile = await http.MultipartFile.fromPath(
  //       'file',
  //       _image.path,
  //       filename: fileName,
  //     );

  //     request.files.add(multipartFile);
  //     final http.StreamedResponse response = await request.send();
  //     _setDpUploadProgress(0);

  //     List<int> bytes = [];
  //     // send request to upload image
  //     response.stream.listen(
  //       (List<int> newBytes) {
  //         bytes.addAll(newBytes);
  //         final uploadedLength = bytes.length;
  //         double _prog = uploadedLength / contentLength;
  //         _setDpUploadProgress(_prog);
  //       },
  //       onDone: () async {
  //         //response.statusCode;
  //         _setDpUploadProgress(0);
  //         _toggleUploadingDp(false);
  //       },
  //       onError: (e) {
  //         print(e);
  //         showsnackbar(
  //           context,
  //           e.toString(),
  //           SnackbarContentType.failure,
  //         );
  //         _toggleUploadingDp(false);
  //       },
  //       cancelOnError: true,
  //     );
  //   } catch (ex) {
  //     print(ex);
  //     showsnackbar(
  //       context,
  //       "An error occured while uploading image. Please check your internet and try again.",
  //       SnackbarContentType.failure,
  //     );
  //     _toggleUploadingDp(false);
  //   }
  // }
}
