import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../view_models/auth/complete_profile_view_model.dart';
import '../view_models/auth/forgot_password_view_model.dart';
import '../view_models/auth/login_view_model.dart';
import '../view_models/auth/otp_view_model.dart';
import '../view_models/auth/register_view_model.dart';
import '../view_models/auth/set_password_view_model.dart';
import '../view_models/common/app_view_model.dart';

List<SingleChildWidget> viewModelProviders = [
  ChangeNotifierProvider(
    create: (_) => RegisterViewModel(),
  ),
  ChangeNotifierProvider(
    create: (_) => LoginViewModel(),
  ),
  ChangeNotifierProvider(
    create: (_) => ForgotPasswordViewModel(),
  ),
  ChangeNotifierProvider(
    create: (_) => SetPasswordViewModel(),
  ),
  ChangeNotifierProvider(
    create: (_) => OtpViewModel(),
  ),
  ChangeNotifierProvider(
    create: (_) => CompleteProfileViewModel(),
  ),
  ChangeNotifierProvider(
    create: (_) => AppViewModel(),
  ),
];
