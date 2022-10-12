
import '../../../models/auth/register/register_request_model.dart';

abstract class RegisterRepository{
  void createAccount(RegisterRequestModel newUser) async {}
}