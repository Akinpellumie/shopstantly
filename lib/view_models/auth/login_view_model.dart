// import 'package:alpha_omega_app/config/request_helper.dart';
// import 'package:alpha_omega_app/models/auth/existing/login_model.dart';
// import 'package:alpha_omega_app/utils/constants.dart';
// import 'package:alpha_omega_app/utils/show_snackbar.dart';
// import 'package:alpha_omega_app/utils/snackbar_content_type.dart';
// import 'package:alpha_omega_app/utils/tuple.dart';
// import 'package:flutter/material.dart';

// import '../../models/auth/existing/login_response_model.dart';
// import '../../repositories/login/login_repository_impl.dart';
// import '../../utils/helpers.dart';
// import '../../utils/shared_prefs.dart';

// class LoginViewModel extends ChangeNotifier {
//   static late TextEditingController _emailController;
//   static late TextEditingController _passwordController;
//   final GlobalKey<FormState> _formKey =
//       GlobalKey<FormState>(debugLabel: '_loginFormKey');
//   final LoginRepositoryImpl _authRepoImpl = LoginRepositoryImpl();
//   bool _loggingIn = false;

//   TextEditingController get emailController => _emailController;
//   TextEditingController get passwordController => _passwordController;
//   GlobalKey<FormState> get formKey => _formKey;
//   bool get loggingIn => _loggingIn;

//   final Map<String, dynamic> _errorBag = {};

//   LoginViewModel() {
//     _emailController = TextEditingController();
//     _passwordController = TextEditingController();
//     //setUserIdValue();
//   }

//   // static Future<String> getUserIdValue() async {
//   //   return await UserPreferences.getUsername();
//   // }

//   Map get errorBag => _errorBag;

//   void setError(String key, String value) {
//     _errorBag[key] = value;
//     notifyListeners();
//   }

//   void removeError(String key) {
//     _errorBag.remove(key);
//     notifyListeners();
//   }

//   void _toggleLoggingIn(bool value) {
//     _loggingIn = value;
//     notifyListeners();
//   }

//   void loginUser(BuildContext context) async {
//     try {
//       final form = _formKey.currentState;
//       if (emailController.text.isEmpty) {
//         displayToast("Enter a valid email address", kPrimaryColor);
//       } else if (passwordController.text.isEmpty) {
//         displayToast("Enter a valid password", kPrimaryColor);
//       } else if (form!.validate() && _errorBag.keys.isEmpty) {
//         _toggleLoggingIn(true);
//         Tuple result = await _authRepoImpl.login(
//           LoginModel(
//             email: _emailController.text,
//             password: _passwordController.text,
//           ),
//         );

//         _toggleLoggingIn(false);
//         if (result.response != null && result.statusCode == 200) {
//           LoginResponseModel activeUser = result.response as LoginResponseModel;
//           //RequestHelper.userToken = activeUser.message.token;

//           //save user details...
//           saveUserDetails(activeUser);

//           //navigate user to home page...
//           gotoMainScreen(context, '/main');

//           _passwordController.text = "";
//         } else if (result.statusCode != 200 || result.error != null) {
//           showsnackbar(context, result.error, SnackbarContentType.failure);
//         } else {
//           //print(_errorBag);
//           showsnackbar(
//               context,
//               "Something went wrong while verifying credentials or maybe we're out of reach. Please check back later or contact support.",
//               SnackbarContentType.failure);
//         }
//       } else {
//         print(_errorBag);
//         showsnackbar(
//             context,
//             "Oops! Seems something is off. Please check back later or contact support.",
//             SnackbarContentType.failure);
//       }
//     } on Exception catch (e) {
//       print(e);
//       showsnackbar(
//           context,
//           "An unkwown error occured. Please check back later or contact support.",
//           SnackbarContentType.failure);
//     } finally {
//       _toggleLoggingIn(false);
//     }
//   }

//   void saveUserDetails(LoginResponseModel user) {
//     SharedPrefs.setString('userToken', user.message.token);
//     SharedPrefs.setString('firstName', user.message.profile.firstName);
//     SharedPrefs.setString('userName', user.message.profile.username);
//     SharedPrefs.setString('lastName', user.message.profile.lastName);
//     SharedPrefs.setString('email', user.message.profile.email);
//     SharedPrefs.setString('userID', user.message.profile.id);
//     SharedPrefs.setString('phoneNumber', user.message.profile.phoneNumber);
//     SharedPrefs.setString('profilePicUrl', user.message.profile.profilePic);
//     RequestHelper.fullName =
//         '${user.message.profile.firstName} ${user.message.profile.lastName}';
//     RequestHelper.userName = user.message.profile.username;
//     RequestHelper.profileImageUrl = user.message.profile.profilePic;
//     RequestHelper.email = user.message.profile.email;
//     RequestHelper.phoneNumber = user.message.profile.phoneNumber;
//     RequestHelper.userID = user.message.profile.id;

//     DateTime punchIn = user.message.latestPunchIn != null
//         ? DateTime.parse(user.message.latestPunchIn)
//         : DateTime.now();
//     //print(pT);
//     //DateTime punchIn = DateTime.parse(user.message.latestPunchIn) ?? DateTime.now();
//     RequestHelper.globalPunchInTime = user.message.latestPunchIn != null
//         ? formatDateWithTime(punchIn)
//         : "00:00:00";
//   }

//   @override
//   void dispose() {
//     print("Disposed");
//     //_userIdController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
// }
