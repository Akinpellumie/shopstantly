
import '../../../models/auth/register/register_request_model.dart';

abstract class RegisterRepository{
  void createAccount(RegisterRequestModel newUser) async {}
  void usernameAvailability(String username) async {}
  void activateAccount(String userID, String otp) async {}
}