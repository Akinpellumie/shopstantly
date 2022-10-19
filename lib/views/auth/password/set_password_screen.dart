import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:shopstantly_app/helpers/theme_helper.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/base_app_bar.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

import '../../../view_models/auth/set_password_view_model.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  bool _obscureText = true;
  String userEmail = '';

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SetPasswordViewModel viewModel = context.watch<SetPasswordViewModel>();
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    userEmail = arguments['userEmail'] as String;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Set New Password',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // const SizedBox(
                //   height: 40.0,
                // ),
                Text(
                  "Kindly set a new password.",
                  style: TextStyle(
                    color: kDarkColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.019,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter the 6-digit verification code sent to ",
                        style: TextStyle(
                          color: kPrimaryTextColor,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.normal,
                          fontSize: size.height * 0.0190,
                        ),
                      ),
                      TextSpan(
                        text: userEmail,
                        style: TextStyle(
                          color: kPrimaryTextColor,
                          fontSize: size.height * 0.019,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                        ),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () =>
                        //       CustomRouter.nextScreen(context, '/register'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),
                Form(
                  key: viewModel.formKey,
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          readOnly: viewModel.sending,
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: ThemeHelper().textInputDecoration(
                            'Verification Code',
                            'Enter code',
                            const Icon(
                              Icons.password_outlined,
                              color: kLightGrayColor,
                              size: 20.0,
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter verification code';
                            } else if (val.length != 6) {
                              return 'Invalid verification code';
                            } else {
                              return null;
                            }
                          },
                          textInputAction: TextInputAction.next,
                          controller: viewModel.resetCodeController,
                          style: TextStyle(
                            fontSize: size.height * 0.022,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        child: TextFormField(
                          readOnly: viewModel.sending,
                          controller: viewModel.passwordController,
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
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter password';
                            } else if (val.length < 8) {
                              return 'Password length cannot be less than 8 characters';
                            } else {
                              return null;
                            }
                          },
                          textInputAction: TextInputAction.next,
                          style: TextStyle(
                            fontSize: size.height * 0.022,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        child: TextFormField(
                          readOnly: viewModel.sending,
                          controller: viewModel.confirmPasswordController,
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
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Re-enter password';
                            } else if (val !=
                                viewModel.passwordController.text) {
                              return 'Password does not match.';
                            } else {
                              return null;
                            }
                          },
                          textInputAction: TextInputAction.done,
                          style: TextStyle(
                            fontSize: size.height * 0.022,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                AppButton(
                  text: "Submit",
                  type: ButtonType.primary,
                  loading: viewModel.sending,
                  onPressed: () {
                    viewModel.setNewPassword(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
