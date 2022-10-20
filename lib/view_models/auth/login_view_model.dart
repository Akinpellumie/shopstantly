
import 'dart:convert';

import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/tuple.dart';
import 'package:flutter/material.dart';
import '../../models/auth/login/login_model.dart';
import '../../models/auth/login/login_response_model.dart';
import '../../repository/auth/login/login_repository_impl.dart';
import '../../utils/custom_router.dart';
import '../../utils/helpers.dart';
import '../../utils/shared_prefs.dart';
import '../../utils/show_snackbar.dart';
import '../../utils/snackbar_content_type.dart';

class LoginViewModel extends ChangeNotifier {
  static late TextEditingController _emailController;
  static late TextEditingController _passwordController;
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_loginFormKey');
  final LoginRepositoryImpl _authRepoImpl = LoginRepositoryImpl();
  bool _loggingIn = false;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  GlobalKey<FormState> get formKey => _formKey;
  bool get loggingIn => _loggingIn;

  final Map<String, dynamic> _errorBag = {};

  LoginViewModel() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }


  Map get errorBag => _errorBag;

  void setError(String key, String value) {
    _errorBag[key] = value;
    notifyListeners();
  }

  void removeError(String key) {
    _errorBag.remove(key);
    notifyListeners();
  }

  void _toggleLoggingIn(bool value) {
    _loggingIn = value;
    notifyListeners();
  }

  void loginUser(BuildContext context) async {
    try {
      final form = _formKey.currentState;
      if (form!.validate()) {
        _toggleLoggingIn(true);
        Tuple result = await _authRepoImpl.loginUser(
          LoginModel(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        );

        _toggleLoggingIn(false);
        if (result.response != null && result.statusCode == 200) {
          LoginResponseModel activeUser = result.response as LoginResponseModel;
          //RequestHelper.userToken = activeUser.message.token;

          //save user details...
          saveUserDetails(activeUser);

          //navigate user to home page...
          CustomRouter.gotoMainScreen(context, "/mainPage");
          //gotoMainScreen(context, '/main');

          _passwordController.text = "";
        } else if (result.statusCode != 200 || result.error != null) {
          showsnackbar(context, result.error, SnackbarContentType.failure);
        } else {
          //print(_errorBag);
          showsnackbar(
              context,
              "Something went wrong while verifying credentials or maybe we're out of reach. Please check back later or contact support.",
              SnackbarContentType.failure);
        }
      } else {
        // print(_errorBag);
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
      _toggleLoggingIn(false);
    }
  }

  void saveUserDetails(LoginResponseModel user) {
    String userJson = jsonEncode(user.toJson());
    SharedPrefs.setString('accessToken', user.data.accessToken);
    SharedPrefs.setString('userData', userJson);
  }

  @override
  void dispose() {
    print("Disposed");
    //_userIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
