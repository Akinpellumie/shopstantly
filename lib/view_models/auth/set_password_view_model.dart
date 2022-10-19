
import 'package:shopstantly_app/models/auth/password/reset_password_model.dart';
import 'package:shopstantly_app/utils/tuple.dart';
import 'package:flutter/material.dart';
import '../../models/common/general_response.dart';
import '../../repository/auth/password/password_repository_impl.dart';
import '../../utils/custom_router.dart';
import '../../utils/show_snackbar.dart';
import '../../utils/snackbar_content_type.dart';

class SetPasswordViewModel extends ChangeNotifier {
  static late TextEditingController _resetCodeController;
  static late TextEditingController _confirmPasswordController;
  static late TextEditingController _passwordController;
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_setPasswordFormKey');
  final PasswordRepositoryImpl _repoImpl = PasswordRepositoryImpl();
  bool _sending = false;

  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;
  TextEditingController get resetCodeController => _resetCodeController;
  TextEditingController get passwordController => _passwordController;
  GlobalKey<FormState> get formKey => _formKey;
  bool get sending => _sending;

  SetPasswordViewModel() {
    _confirmPasswordController = TextEditingController();
    _passwordController = TextEditingController();
    _resetCodeController = TextEditingController();
  }

  void _toggleSending(bool value) {
    _sending = value;
    notifyListeners();
  }

  void setNewPassword(BuildContext context) async {
    try {
      final form = _formKey.currentState;

      if (form!.validate()) {
        String code = _resetCodeController.text;
        _toggleSending(true);
        Tuple result = await _repoImpl.resetPasswordAsync(
          ResetPasswordModel(
            password: _passwordController.text,
          ),
          code,
        );

        if (result.response != null && result.statusCode == 200) {
          GeneralResponseModel res = result.response as GeneralResponseModel;
          if (res.status) {
            showsnackbar(
                context,
                "Password reset successful. Please login to continue.",
                SnackbarContentType.success);
            CustomRouter.gotoMainScreen(context, '/login');
          } else {
            showsnackbar(context, res.message, SnackbarContentType.failure);
          }
        } else if (result.statusCode != 200 || result.error != null) {
          showsnackbar(context, result.error, SnackbarContentType.failure);
          //navigate to account activation if possible
        } else {
          //print(_errorBag);
          showsnackbar(
              context,
              "Something went wrong while verifying credentials or maybe we're out of reach. Please check back later or contact support.",
              SnackbarContentType.failure);
        }
      } else {
        // showsnackbar(
        //     context,
        //     "Oops! Seems something is off. Please check back later or contact support.",
        //     SnackbarContentType.failure);
      }
    } on Exception catch (e) {
      print(e);
      showsnackbar(
          context,
          "An unkwown error occured. Please check back later or contact support.",
          SnackbarContentType.failure);
    } finally {
      _toggleSending(false);
    }
  }

  @override
  void dispose() {
    print("Disposed");
    _passwordController.dispose();
    _resetCodeController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
