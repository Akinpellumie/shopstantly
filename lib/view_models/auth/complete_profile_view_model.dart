import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopstantly_app/models/common/file_upload_model.dart';

import '../../models/auth/register/complete_profile_request_model.dart';
import '../../models/auth/register/complete_profile_response_model.dart';
import '../../repository/auth/register/register_repository_impl.dart';
import '../../repository/common/common_repository_impl.dart';
import '../../utils/custom_router.dart';
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

  File? _selectedBgImageFile;
  File? get selectedBgImageFile => _selectedBgImageFile;
  void _setSelectedBgImageFile(File value) {
    _selectedBgImageFile = value;
    notifyListeners();
  }

  File? _selectedDpImageFile;
  File? get selectedDpImageFile => _selectedDpImageFile;
  void _setSelectedDpImageFile(File value) {
    _selectedDpImageFile = value;
    notifyListeners();
  }

  bool _isBgImageSelected = false;
  bool get isBgImageSelected => _isBgImageSelected;
  void _toggleIsBgImageSelected(bool value) {
    _isBgImageSelected = value;
    notifyListeners();
  }

  bool _isDpImageSelected = false;
  bool get isDpImageSelected => _isDpImageSelected;
  void _toggleIsDpImageSelected(bool value) {
    _isDpImageSelected = value;
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

  Future<void> selectBgToUpload(BuildContext context, String userID) async {
    try {
      print('select image frame tapped...');
      if (uploadingBg) {
        return;
      }
      final image = await ImagePicker()
          .pickImage(imageQuality: 50, source: ImageSource.gallery);
      if (image == null) {
        _toggleIsBgImageSelected(false);
        return;
      } else {
        final imageTemp = File(image.path);
        _setSelectedBgImageFile(imageTemp);
        _toggleIsBgImageSelected(true);
        bool uploadResult = await uploadBgImage(
          context,
          'profile bg ${DateTime.now.toString()}',
          imageTemp,
          userID,
        );
        print(uploadResult);
      }
    } on Exception catch (e) {
      print(e);
      showsnackbar(
          context,
          "An unkwown error occured. Please check back later or contact support.",
          SnackbarContentType.failure);
    } finally {
      //_toggleLoggingIn(false);
    }
  }

  Future<bool> uploadBgImage(
    BuildContext context,
    String fileName,
    File _file,
    String userID,
  ) async {
    try {
      _toggleUploadingBg(true);
      Tuple result = await _fileRepoImpl.uploadFileToServer(
        _file,
        fileName,
        userID,
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

  Future<void> selectDpToUpload(BuildContext context, String userID) async {
    try {
      print('select image frame tapped...');
      if (uploadingDp) {
        return;
      }
      final image = await ImagePicker()
          .pickImage(imageQuality: 50, source: ImageSource.gallery);
      if (image == null) {
        _toggleIsDpImageSelected(false);
        return;
      } else {
        final imageTemp = File(image.path);
        _setSelectedDpImageFile(imageTemp);
        _toggleIsDpImageSelected(true);
        bool uploadResult = await uploadDpImage(
          context,
          'profile picture ${DateTime.now.toString()}',
          imageTemp,
          userID,
        );
        print(uploadResult);
      }
    } on Exception catch (e) {
      print(e);
      showsnackbar(
          context,
          "An unkwown error occured. Please check back later or contact support.",
          SnackbarContentType.failure);
    } finally {
      //_toggleLoggingIn(false);
    }
  }

  Future<bool> uploadDpImage(
    BuildContext context,
    String fileName,
    File _file,
    String userID,
  ) async {
    try {
      _toggleUploadingDp(true);
      Tuple result = await _fileRepoImpl.uploadFileToServer(
        _file,
        fileName,
        userID,
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

  Future<void> completeProfileRequestAsync(
    BuildContext context,
    String _city,
    String _country,
    String _state,
    String userID,
  ) async {
    try {
      final form = _formKey.currentState;
      if (form!.validate()) {
        _toggleSendingRequest(true);

        Tuple result = await _registerRepoImpl.completeAccountRegistration(
          CompleteProfileRequestModel(
            bioInfo: _bioInfoController.text,
            city: _city,
            country: _country,
            coverPhoto: bgImagePath,
            profilePhoto: dpImagePath,
            state: _state,
          ),
          userID,
        );

        if (result.response != null && result.statusCode == 200) {
          CompleteProfileResponseModel response =
              result.response as CompleteProfileResponseModel;
          showsnackbar(
            context,
            'Your membership account set-up has been completed successfully. Proceed...',
            SnackbarContentType.success,
          );
          CustomRouter.nextScreen(
            context,
            "/mainPage",
          );
          print(response);
        } else if (result.statusCode != 200 || result.error != null) {
          showsnackbar(context, result.error, SnackbarContentType.failure);
        } else {
          showsnackbar(
            context,
            "Something went wrong while sending request. Please check back later or contact support.",
            SnackbarContentType.failure,
          );
        }
      } else {
        // showsnackbar(
        //   context,
        //   "Something went wrong while processing your request. Please check your internet speed or try again later.",
        //   SnackbarContentType.failure,
        // );
      }
    } on Exception catch (e) {
      print(e);
    } finally {
      _toggleSendingRequest(false);
    }
  }
}
