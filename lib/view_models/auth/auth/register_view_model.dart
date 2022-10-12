import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../../models/auth/register/register_request_model.dart';
import '../../../repository/auth/register/register_repository_impl.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/helpers.dart';
import '../../../utils/show_snackbar.dart';
import '../../../utils/snackbar_content_type.dart';
import '../../../utils/tuple.dart';

class RegisterViewModel extends ChangeNotifier {
  static late TextEditingController _fullnameController;
  static late TextEditingController _emailController;
  static late TextEditingController _passwordController;
  static late TextEditingController _confirmPasswordController;
  static late TextEditingController _phonenumberController;
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_registerFormKey');
  final RegisterRepositoryImpl _registerRepoImpl = RegisterRepositoryImpl();

  TextEditingController get fullnameController => _fullnameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phonenumberController => _phonenumberController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;
  GlobalKey<FormState> get formKey => _formKey;

  bool _creatingAccount = false;
  bool get creatingAccount => _creatingAccount;

  final Map<String, dynamic> _errorBag = {};

  RegisterViewModel() {
    _fullnameController = TextEditingController();
    _emailController = TextEditingController();
    _phonenumberController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  void _toggleCreatingAccount(bool value) {
    _creatingAccount = value;
    notifyListeners();
  }

  void registerNewUser(BuildContext context) async {
    try {
      final form = _formKey.currentState;
      if (form!.validate()) {
        _toggleCreatingAccount(true);

        Tuple result = await _registerRepoImpl.createAccount(
          RegisterRequestModel(
            fullName: _fullnameController.text,
            phone: _phonenumberController.text,
            email: _emailController.text,
            password: _passwordController.text,
            type: '',
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

  @override
  void dispose() {
    print("Disposed");
    _fullnameController.dispose();
    _phonenumberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
