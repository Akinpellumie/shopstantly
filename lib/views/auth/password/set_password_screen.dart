import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shopstantly_app/helpers/theme_helper.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/base_app_bar.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Create New Password',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40.0,
              ),
              Text(
                "Kindly Enter a new password",
                style: TextStyle(
                  color: kDarkColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.019,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Password must include at least 8 characters and upper case.",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400,
                  fontSize: kNormalText,
                ),
              ),
              const SizedBox(height: 10.0),
              Form(
                //key: _loginViewModel.formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 20.0),
                    Container(
                      child: TextFormField(
                        // readOnly: _loginViewModel.loggingIn,
                        // controller: _loginViewModel.passwordController,
                        obscureText: _obscureText,
                        obscuringCharacter: "*",
                        decoration: ThemeHelper().passwordInputDecoration(
                          'New Password',
                          'Enter new password',
                          IconButton(
                            onPressed: _toggle,
                            icon: _obscureText
                                ? const Icon(
                                    CupertinoIcons.eye,
                                    color: kLightGrayColor,
                                    size: 20.0,
                                  )
                                : const Icon(
                                    CupertinoIcons.eye_slash,
                                    color: kLightGrayColor,
                                    size: 20.0,
                                  ),
                          ),
                          const Icon(
                            Icons.lock_rounded,
                            color: kLightGrayColor,
                            size: 25.0,
                          ),
                        ),
                        validator: (v) {
                          if (!RequiredValidator(
                            errorText: 'Enter valid password',
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
                    const SizedBox(height: 20.0),
                    Container(
                      child: TextFormField(
                        // readOnly: _loginViewModel.loggingIn,
                        // controller: _loginViewModel.passwordController,
                        obscureText: _obscureText,
                        obscuringCharacter: "*",
                        decoration: ThemeHelper().passwordInputDecoration(
                          'Confirm Password',
                          'Confirm new password',
                          IconButton(
                            onPressed: _toggle,
                            icon: _obscureText
                                ? const Icon(
                                    CupertinoIcons.eye,
                                    color: kLightGrayColor,
                                    size: 20.0,
                                  )
                                : const Icon(
                                    CupertinoIcons.eye_slash,
                                    color: kLightGrayColor,
                                    size: 20.0,
                                  ),
                          ),
                          const Icon(
                            Icons.lock_rounded,
                            color: kLightGrayColor,
                            size: 25.0,
                          ),
                        ),
                        validator: (v) {
                          if (!RequiredValidator(
                            errorText: 'Password must match',
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
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              AppButton(
                text: "Confirm Password",
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/login");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
