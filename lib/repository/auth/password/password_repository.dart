import 'package:shopstantly_app/models/auth/password/forgot_password_model.dart';

import '../../../models/auth/password/reset_password_model.dart';

abstract class PasswordRepository {
  void forgotPasswordAsync(ForgotPasswordModel request) async {}
  void resetPasswordAsync(ResetPasswordModel request, String otp) async {}
}
