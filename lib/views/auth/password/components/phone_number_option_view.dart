import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shopstantly_app/helpers/theme_helper.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/utils/dimensions.dart';


class PhoneNumberOptionView extends StatelessWidget {
  const PhoneNumberOptionView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 40.0,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Enter 6 Digit code sent to your Phone number ",
                  style: TextStyle(
                    color: kDarkColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.019,
                  ),
                ),
                TextSpan(
                  text: "+6282******39",
                  style: TextStyle(
                      color: kDarkColor,
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.019,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          Form(
            //key: _loginViewModel.formKey,
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      'Code',
                      'Enter code',
                    ),
                    validator: (v) {
                      if (!RequiredValidator(
                        errorText: '',
                      ).isValid(v)) {
                        // _loginViewModel.setError(
                        //   "Password",
                        //   'Enter a valid password',
                        // );
                      } else {
                        //_loginViewModel.removeError("password");
                      }
                      return null;
                    },
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          AppButton(
            text: "Reset Password",
            type: ButtonType.primary,
            onPressed: () {
              CustomRouter.nextScreen(context, "/setNewPassword");
            },
          ),
        ],
      ),
    );
  }
}
