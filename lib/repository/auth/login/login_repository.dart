
import '../../../models/auth/login/login_model.dart';

abstract class LoginRepository{
  void loginUser(LoginModel user) async {}
}