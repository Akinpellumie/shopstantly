import 'package:shopstantly_app/models/auth/password/forgot_password_model.dart';
import 'package:shopstantly_app/models/common/general_response.dart';
import 'package:shopstantly_app/utils/tuple.dart';
import 'package:flutter/material.dart';
import '../../repository/auth/password/password_repository_impl.dart';
import '../../utils/custom_router.dart';
import '../../utils/show_snackbar.dart';
import '../../utils/snackbar_content_type.dart';

class ForgotPasswordViewModel extends ChangeNotifier {
  static late TextEditingController _emailController;
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_forgotPassFormKey');
  final PasswordRepositoryImpl _repoImpl = PasswordRepositoryImpl();
  bool _sending = false;

  TextEditingController get emailController => _emailController;
  GlobalKey<FormState> get formKey => _formKey;
  bool get sending => _sending;

  ForgotPasswordViewModel() {
    _emailController = TextEditingController();
  }

  void _toggleSending(bool value) {
    _sending = value;
    notifyListeners();
  }

  void forgotPassword(BuildContext context) async {
    try {
      final form = _formKey.currentState;
      if (form!.validate()) {
        _toggleSending(true);
        Tuple result = await _repoImpl.forgotPasswordAsync(
          ForgotPasswordModel(
            email: _emailController.text,
          ),
        );
        if (result.response != null && result.statusCode == 200) {
          GeneralResponseModel res = result.response as GeneralResponseModel;
          if (res.status) {
            showsnackbar(
              context,
              "A mail with password reset instructions has been sent to ${_emailController.text}.",
              SnackbarContentType.success,
            );
            CustomRouter.nextScreen(context, '/setNewPassword', args: {
              'userEmail': _emailController.text,
            });
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
    _emailController.dispose();
    super.dispose();
  }
}
