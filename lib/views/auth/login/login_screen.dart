import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:unicons/unicons.dart';

import '../../../helpers/theme_helper.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styling.dart';
import '../../../utils/base_app_bar.dart';
import '../../../utils/custom_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Initially password is obscure
  bool _obscureText = true;
  bool _rememberMe = false;
  //String passwordIcon = AssetsPath.eyeOff;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleRememberMe() {
    setState(() {
      _rememberMe = !_rememberMe;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Login',
        appBar: AppBar(),
        showLogo: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome Back',
                  style: AppStyling.header3,
                ),
              ),
              const SizedBox(height: 40.0),
              Form(
                //key: _loginViewModel.formKey,
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration: ThemeHelper().textInputDecoration(
                          'Email',
                          'Enter Mail',
                          const Icon(
                            AssetsPath.email,
                            color: kLightGrayColor,
                            size: 25.0,
                          ),
                        ),
                        validator: (v) {
                          if (!RequiredValidator(
                            errorText: '',
                          ).isValid(v)) {
                            // _loginViewModel.setError(
                            //   "User ID",
                            //   'Enter a valid user ID',
                            // );
                          } else {
                            //_loginViewModel.removeError("userId");
                          }
                          return null;
                        },
                        //controller: _loginViewModel.userIdController,
                        keyboardType: TextInputType.text,
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      child: TextFormField(
                        // readOnly: _loginViewModel.loggingIn,
                        // controller: _loginViewModel.passwordController,
                        obscureText: _obscureText,
                        obscuringCharacter: "*",
                        decoration: ThemeHelper().passwordInputDecoration(
                          'Password',
                          'Enter password',
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
                          // Image.asset(
                          //   AssetsPath.lock,
                          //   height: 20.0,
                          // ),
                          const Icon(
                            CupertinoIcons.lock_fill,
                            color: kLightGrayColor,
                            size: 25.0,
                          ),
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
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: _toggleRememberMe,
                              child: !_rememberMe
                                  ? const Icon(
                                      UniconsLine.check_circle,
                                      color: kLightGrayColor,
                                      size: 25.0,
                                    )
                                  : const Icon(
                                      UniconsSolid.check_circle,
                                      size: 25.0,
                                      color: kPrimaryColor,
                                    ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Remember Me',
                              style: AppStyling.iconWithText,
                            )
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => CustomRouter.nextScreen(
                            context,
                            '/forgotPassword',
                          ),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: kDefaultFont,
                                fontSize: kNormalText,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    AppButton(
                      text: "Sign In",
                      type: ButtonType.primary,
                      onPressed: () {
                        CustomRouter.nextScreen(context, "/mainPage");
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0190,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () =>
                              CustomRouter.nextScreen(context, "/register"),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0190,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
