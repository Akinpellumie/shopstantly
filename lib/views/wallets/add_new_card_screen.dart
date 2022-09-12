import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../helpers/theme_helper.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';
import '../../utils/base_app_bar.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  bool _obscureText = true;
  //String passwordIcon = AssetsPath.eyeOff;

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
        title: 'New Card',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  AssetsPath.card,
                  fit: BoxFit.cover,
                  height: size.height * 0.25,
                  width: size.width,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Form(
              //key: _loginViewModel.formKey,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration: ThemeHelper()
                            .textInputDecoration('Card Name', 'My card', null),
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
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration: ThemeHelper().textInputDecoration(
                            'Card Number', 'XXXX-XXXX-XXXX-XXXX', null),
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
                    SizedBox(
                      width: size.width,
                      child: Row(
                        children: [
                          Container(
                            width: size.width / 2 - 25.0,
                            child: TextFormField(
                              //initialValue: initialUser,
                              //readOnly: _loginViewModel.loggingIn,
                              decoration: ThemeHelper().textInputDecoration(
                                  'Exp Date', 'XX-XX', null),
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
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: size.width / 2 - 25.0,
                            child: TextFormField(
                              //initialValue: initialUser,
                              //readOnly: _loginViewModel.loggingIn,
                              decoration: ThemeHelper()
                                  .textInputDecoration('CVV2', 'XXX', null),
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
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      child: TextFormField(
                        // readOnly: _loginViewModel.loggingIn,
                        // controller: _loginViewModel.passwordController,
                        obscureText: _obscureText,
                        obscuringCharacter: "*",
                        decoration: ThemeHelper().passwordInputDecoration(
                            'Password (optional)',
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
                            null),
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
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: AppButton(
                text: "Add",
                type: ButtonType.primary,
                onPressed: () {
                  //CustomRouter.nextScreen(context, "/mainPage");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
