import 'package:flutter/material.dart';

import '../../models/auth/register/validation_model.dart';
import '../../repository/auth/register/register_repository_impl.dart';
import '../../utils/custom_router.dart';
import '../../utils/show_snackbar.dart';
import '../../utils/snackbar_content_type.dart';
import '../../utils/tuple.dart';

class OtpViewModel extends ChangeNotifier {
  late TextEditingController _otp1Controller;
  late TextEditingController _otp2Controller;
  late TextEditingController _otp3Controller;
  late TextEditingController _otp4Controller;
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_otpFormKey');
  TextEditingController get otp1Controller => _otp1Controller;
  TextEditingController get otp2Controller => _otp2Controller;
  TextEditingController get otp3Controller => _otp3Controller;
  TextEditingController get otp4Controller => _otp4Controller;
  GlobalKey<FormState> get formKey => _formKey;

  final RegisterRepositoryImpl _registerRepoImpl = RegisterRepositoryImpl();

  OtpViewModel() {
    _otp1Controller = TextEditingController();
    _otp2Controller = TextEditingController();
    _otp3Controller = TextEditingController();
    _otp4Controller = TextEditingController();
  }

  bool _activating = false;
  bool get activating => _activating;
  void _toggleActivating(bool value) {
    _activating = value;
    notifyListeners();
  }

  bool _resendingCode = false;
  bool get resendingCode => _resendingCode;
  void _toggleResendingCode(bool value) {
    _resendingCode = value;
    notifyListeners();
  }

  Future<void> activateAcctAsync(BuildContext context, String userId) async {
    try {
      String otp =
          '${_otp1Controller.text}${_otp2Controller.text}${_otp3Controller.text}${_otp3Controller.text}';
      if (otp.isEmpty || otp.length != 4) {
        return;
      } else {
        Tuple result = await _registerRepoImpl.activateAccount(userId, otp);
        if (result.response != null && result.statusCode == 200) {
          ValidationModel response = result.response as ValidationModel;
          if (response.status) {
            showsnackbar(
              context,
              'Account successfully activated. Proceed to update profile info...',
              SnackbarContentType.success,
            );
            CustomRouter.nextScreen(context, "/addPhoto",
                args: {'userId': userId});
          } else {
            showsnackbar(
              context,
              'The ACTIVATION code provided is invalid. Please check and try again...',
              SnackbarContentType.failure,
            );
          }
        } else if (result.statusCode != 200 || result.error != null) {
          showsnackbar(
            context,
            'An error occured while activating account with the provided code. Please check the verification code and try again.',
            SnackbarContentType.failure,
          );
        } else {
          showsnackbar(
            context,
            "Something went wrong while checking activation code. Please check your internet and try again or contact support.",
            SnackbarContentType.failure,
          );
        }
      }
    } catch (ex) {
      print(ex);
    } finally {
      _toggleActivating(false);
    }
  }

  Future<void> resendVerificationCodeAsync(
      BuildContext context, String userId) async {
    try {
      _toggleResendingCode(true);
      Tuple result = await _registerRepoImpl.resendVerificationCode(userId);
      if (result.response != null && result.statusCode == 200) {
        ValidationModel response = result.response as ValidationModel;
        if (response.status) {
          showsnackbar(
            context,
            response.message,
            SnackbarContentType.success,
          );
        } else {
          showsnackbar(
            context,
            response.message,
            SnackbarContentType.failure,
          );
        }
      } else if (result.statusCode != 200 || result.error != null) {
        showsnackbar(
          context,
          'An error occured while sending activation code. Please try again or contact support.',
          SnackbarContentType.failure,
        );
      } else {
        showsnackbar(
          context,
          "Something went wrong while sending activation code. Please check your internet and try again or contact support.",
          SnackbarContentType.failure,
        );
      }
    } catch (ex) {
      print(ex);
    } finally {
      _toggleResendingCode(false);
    }
  }
}
