import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shopstantly_app/models/auth/register/username_model.dart';

import '../../../models/auth/register/register_request_model.dart';
import '../../../repository/auth/register/register_repository_impl.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/helpers.dart';
import '../../../utils/show_snackbar.dart';
import '../../../utils/snackbar_content_type.dart';
import '../../../utils/tuple.dart';

class RegisterViewModel extends ChangeNotifier {
  static late TextEditingController _firstnameController;
  static late TextEditingController _lastnameController;
  static late TextEditingController _usernameController;
  static late TextEditingController _emailController;
  static late TextEditingController _passwordController;
  static late TextEditingController _confirmPasswordController;
  static late TextEditingController _phonenumberController;
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_registerFormKey');
  final RegisterRepositoryImpl _registerRepoImpl = RegisterRepositoryImpl();

  TextEditingController get firstnameController => _firstnameController;
  TextEditingController get lastnameController => _lastnameController;
  TextEditingController get usernameController => _usernameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phonenumberController => _phonenumberController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;
  GlobalKey<FormState> get formKey => _formKey;

  final Map<String, dynamic> _errorBag = {};

  RegisterViewModel() {
    _firstnameController = TextEditingController();
    _lastnameController = TextEditingController();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _phonenumberController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  bool _creatingAccount = false;
  bool get creatingAccount => _creatingAccount;
  void _toggleCreatingAccount(bool value) {
    _creatingAccount = value;
    notifyListeners();
  }

  bool _checkingUsername = false;
  bool get checkingUsername => _checkingUsername;
  void _toggleCheckingUsername(bool value) {
    _checkingUsername = value;
    notifyListeners();
  }

  bool _isUsernameAvailable = false;
  bool get isUsernameAvailable => _isUsernameAvailable;
  void _toggleIsUsernameAvailable(bool value) {
    _isUsernameAvailable = value;
    notifyListeners();
  }

  Future<void> registerNewUserAsync(BuildContext context) async {
    try {
      final form = _formKey.currentState;
      if (form!.validate()) {
        _toggleCreatingAccount(true);

        Tuple result = await _registerRepoImpl.createAccount(
          RegisterRequestModel(
            firstName: _firstnameController.text,
            lastName: _usernameController.text,
            username: _firstnameController.text,
            phone: _phonenumberController.text,
            email: _emailController.text,
            password: _passwordController.text,
          ),
        );

        if (result.response != null && result.statusCode == 200) {
          showsnackbar(
            context,
            'Your membership account has been created successfully. Proceed to Login to continue...',
            SnackbarContentType.success,
          );
          CustomRouter.nextScreen(context, "/verifyOtp");
          _passwordController.text = "";
        } else if (result.statusCode != 200 || result.error != null) {
          showsnackbar(context, result.error, SnackbarContentType.failure);
        } else {
          print(_errorBag);
          showsnackbar(
            context,
            "Something went wrong while creating your account or maybe we're out of reach. Please check back later or contact support.",
            SnackbarContentType.failure,
          );
        }
      } else {
        print(_errorBag);
        showsnackbar(
          context,
          "Something went wrong while processing your request. Please check your internet speed or try again later.",
          SnackbarContentType.failure,
        );
      }
    } on Exception catch (e) {
      print(e);
    } finally {
      _toggleCreatingAccount(false);
    }
  }

  Future<void> checkUsernameAsync(BuildContext context, String username) async {
    try {
      _toggleCheckingUsername(true);
      Tuple result = await _registerRepoImpl.usernameAvailability(username);
      if (result.response != null && result.statusCode == 200) {
        UsernameModel response = result.response as UsernameModel;
        bool isAvailable = response.status;
        _toggleIsUsernameAvailable(isAvailable);
      } else if (result.statusCode != 200 || result.error != null) {
        _toggleIsUsernameAvailable(false);
      } else {
        _toggleIsUsernameAvailable(false);
      }
    } catch (ex) {
      print(ex);
    } finally {
      _toggleCheckingUsername(false);
    }
  }

  @override
  void dispose() {
    print("Disposed");
    _firstnameController.dispose();
    _lastnameController.dispose();
    _usernameController.dispose();
    _phonenumberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
