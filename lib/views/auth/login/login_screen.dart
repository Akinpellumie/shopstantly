import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome Back',
                    style: AppStyling.header3,
                  ),
                ),
                const SizedBox(height: 20.0),
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
                              size: 20.0,
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
                          style: TextStyle(fontSize: size.height * 0.0170),
                          keyboardType: TextInputType.text,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 15.0),
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
                              size: 20.0,
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
                          style: TextStyle(fontSize: size.height * 0.0170),
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
                                        size: 20.0,
                                      )
                                    : const Icon(
                                        UniconsSolid.check_circle,
                                        size: 20.0,
                                        color: kPrimaryColor,
                                      ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Remember Me',
                                style: TextStyle(
                                  color: kPlaceholderColor,
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.0160,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () => CustomRouter.nextScreen(
                              context,
                              '/forgotPassword',
                            ),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0160,
                                fontWeight: FontWeight.w500,
                              ),
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
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                color: kDarkColor,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.w300,
                                fontSize: size.height * 0.0190,
                              ),
                            ),
                            TextSpan(
                              text: " Create Account",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: size.height * 0.0190,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => CustomRouter.nextScreen(
                                    context, '/chooseAccount'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: size.height * 0.018,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: kPrimaryColor,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10.0,
                            ),
                            Image.asset(
                              AssetsPath.google,
                              width: size.height * 0.0300,
                              height: size.height * 0.0300,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: size.height * 0.018,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: kPrimaryColor,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10.0,
                            ),
                            Image.asset(
                              AssetsPath.facebook,
                              width: size.height * 0.0300,
                              height: size.height * 0.0300,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Continue with Facebook",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: size.height * 0.018,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
