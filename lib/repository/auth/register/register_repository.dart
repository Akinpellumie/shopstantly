
import 'package:shopstantly_app/models/auth/register/complete_profile_request_model.dart';

import '../../../models/auth/register/register_request_model.dart';

abstract class RegisterRepository{
  void createAccount(RegisterRequestModel newUser) async {}
  void completeAccountRegistration(CompleteProfileRequestModel account, String userId) async {}
  void usernameAvailability(String username) async {}
  void activateAccount(String userID, String otp) async {}
  void resendVerificationCode(String userID) async {}
}