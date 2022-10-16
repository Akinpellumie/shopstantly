import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopstantly_app/extensions/string_extension.dart';
import 'package:unicons/unicons.dart';

import '../../../helpers/theme_helper.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/base_app_bar.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/dimensions.dart';
import '../../../view_models/auth/register_view_model.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Initially password is obscure
  bool _obscureText = true;
  bool _acceptTerms = false;
  String selectedPhoneCode = '+234';
  String selectedCountryLogo = '';
  Color phoneEntryBorderColor = kEntryBorderColor;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleAcceptTerms() {
    setState(() {
      _acceptTerms = !_acceptTerms;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    RegisterViewModel _registerViewModel = context.watch<RegisterViewModel>();
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Create account',
        appBar: AppBar(),
        showLogo: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                        color: kPrimaryColor, fontSize: size.height * 0.0180),
                  ),
                ),
                const SizedBox(height: 10.0),
                Form(
                  //key: _loginViewModel.formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: size.width / 2 - 20,
                            child: TextFormField(
                              //initialValue: initialUser,
                              readOnly: _registerViewModel.creatingAccount,
                              decoration: ThemeHelper().textInputDecoration(
                                'First Name',
                                'Enter first name',
                                const Icon(
                                  Icons.person,
                                  color: kLightGrayColor,
                                  size: 20.0,
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r"[a-zA-Z]+|\s"),
                                ),
                              ],
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Enter first name';
                                }
                                if (!val.isValidName) {
                                  return 'Enter valid name';
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(fontSize: size.height * 0.0170),
                              controller:
                                  _registerViewModel.firstnameController,
                              keyboardType: TextInputType.text,
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: size.width / 2 - 20,
                            child: TextFormField(
                              //initialValue: initialUser,
                              readOnly: _registerViewModel.creatingAccount,
                              decoration: ThemeHelper().textInputDecoration(
                                'Last Name',
                                'Enter last name',
                                const Icon(
                                  Icons.person,
                                  color: kLightGrayColor,
                                  size: 20.0,
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r"[a-zA-Z]+|\s"),
                                ),
                              ],
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Enter last name';
                                }
                                if (!val.isValidName) {
                                  return 'Enter valid name';
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(fontSize: size.height * 0.0170),
                              controller: _registerViewModel.lastnameController,
                              keyboardType: TextInputType.text,
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        child: TextFormField(
                          //initialValue: initialUser,
                          readOnly: _registerViewModel.creatingAccount,
                          decoration: ThemeHelper().textInputDecoration(
                            'Username',
                            'Choose Username',
                            null,
                            _registerViewModel.checkingUsername
                                ? const CircularProgressIndicator(
                                    strokeWidth: 4.0,
                                    color: kPrimaryColor,
                                  )
                                : _registerViewModel.isUsernameAvailable
                                    ? Icon(
                                        Icons.check_circle_outlined,
                                        color: kPrimaryColor,
                                        size: size.height * 0.03,
                                      )
                                    : !_registerViewModel.isUsernameAvailable &&
                                            !_registerViewModel.checkingUsername
                                        ? null
                                        : Icon(
                                            Icons.cancel_outlined,
                                            color: kRedColor,
                                            size: size.height * 0.03,
                                          ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter username';
                            }
                            if (!val.isValidUserName) {
                              return 'Enter valid username.';
                            } else {
                              return null;
                            }
                          },
                          controller: _registerViewModel.usernameController,
                          keyboardType: TextInputType.text,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showCountryPicker(
                                  showPhoneCode: true,
                                  context: context,
                                  onSelect: (Country country) {
                                    setState(() {
                                      selectedCountryLogo = country.flagEmoji;
                                      selectedPhoneCode = country.phoneCode;
                                      print(
                                          'Select country: ${country.displayName}');
                                    });
                                  },
                                  countryListTheme: const CountryListThemeData(
                                    // Optional. Sets the border radius for the bottomsheet.
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                    ),
                                    // Optional. Styles the search field.
                                    inputDecoration: InputDecoration(
                                      labelText: 'Search',
                                      hintText: 'Start typing to search',
                                      prefixIcon: Icon(Icons.search),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: kEntryBorderColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    selectedCountryLogo,
                                    style: TextStyle(
                                        color: kPlaceholderColor,
                                        fontFamily: kDefaultFont,
                                        fontSize: size.height * 0.025),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    selectedPhoneCode,
                                    style: TextStyle(
                                        color: kPlaceholderColor,
                                        fontFamily: kDefaultFont,
                                        fontSize: size.height * 0.015),
                                  ),
                                  const Icon(
                                    UniconsLine.angle_down,
                                    color: kPlaceholderColor,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                //initialValue: initialUser,
                                readOnly: _registerViewModel.creatingAccount,
                                decoration: ThemeHelper().textInputDecoration(
                                  'Phone Number',
                                  'Enter phone number',
                                  null,
                                  null,
                                  false,
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    phoneEntryBorderColor = kPrimaryColor;
                                    print("First text field: $text");
                                  });
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Enter phone number';
                                  }
                                  if (!val.isValidPhone) {
                                    return 'Enter valid phone number';
                                  } else {
                                    return null;
                                  }
                                },
                                controller:
                                    _registerViewModel.phonenumberController,
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(
                              color: phoneEntryBorderColor, width: 1.0),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        child: TextFormField(
                          //initialValue: initialUser,
                          readOnly: _registerViewModel.creatingAccount,
                          decoration: ThemeHelper().textInputDecoration(
                            'Email',
                            'Enter email address',
                            const Icon(
                              AssetsPath.email,
                              color: kLightGrayColor,
                              size: 20.0,
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter preferred email';
                            }
                            if (!val.isValidEmail) {
                              return 'Enter valid email';
                            } else {
                              return null;
                            }
                          },
                          controller: _registerViewModel.emailController,
                          style: TextStyle(
                            fontSize: size.height * 0.0170,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        child: TextFormField(
                          readOnly: _registerViewModel.creatingAccount,
                          controller: _registerViewModel.passwordController,
                          obscureText: _obscureText,
                          obscuringCharacter: "*",
                          decoration: ThemeHelper().passwordInputDecoration(
                            'Create Password',
                            'Enter password',
                            GestureDetector(
                              onTap: () => _toggle(),
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: kLightGrayColor,
                                size: 20.0,
                              ),
                            ),
                            const Icon(
                              Icons.lock_rounded,
                              color: kLightGrayColor,
                              size: 20.0,
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter password';
                            }
                            if (!val.isValidPassword) {
                              return 'Enter valid password with combinations of Caps, small letter, number, and characters.';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(fontSize: size.height * 0.0170),
                          keyboardType: TextInputType.text,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        child: TextFormField(
                          readOnly: _registerViewModel.creatingAccount,
                          controller:
                              _registerViewModel.confirmPasswordController,
                          obscureText: _obscureText,
                          obscuringCharacter: "*",
                          decoration: ThemeHelper().passwordInputDecoration(
                            'Confirm Password',
                            'Re-Enter password',
                            GestureDetector(
                              onTap: () => _toggle(),
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: kLightGrayColor,
                                size: 20.0,
                              ),
                            ),
                            const Icon(
                              Icons.lock_rounded,
                              color: kLightGrayColor,
                              size: 20.0,
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Re-enter password';
                            }
                            if (!val.isValidPassword) {
                              return 'Enter valid password with combinations of Caps, small letter, number, and characters.';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(fontSize: size.height * 0.0170),
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 20.0),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => _toggleAcceptTerms(),
                              child: Icon(
                                _acceptTerms
                                    ? Icons.check_box_outline_blank
                                    : Icons.check_box_outlined,
                                color: kDarkColor,
                                size: size.height * 0.0200,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "By clicking Register, you agree to our ",
                                      style: TextStyle(
                                        color: kDarkColor,
                                        fontFamily: kDefaultFont,
                                        fontWeight: FontWeight.w200,
                                        fontSize: size.height * 0.015,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Terms of Service of Use",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.015,
                                        fontFamily: kDefaultFont,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " & ",
                                      style: TextStyle(
                                        color: kPlaceholderColor,
                                        fontFamily: kDefaultFont,
                                        fontSize: size.height * 0.015,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Privacy Policy",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.015,
                                        fontFamily: kDefaultFont,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      AppButton(
                        text: "Create Account",
                        type: ButtonType.primary,
                        onPressed: () {
                          _registerViewModel.registerNewUserAsync(context);
                          //CustomRouter.nextScreen(context, "/verifyOtp");
                        },
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Always have an account?",
                              style: TextStyle(
                                color: kDarkColor,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.w300,
                                fontSize: size.height * 0.0190,
                              ),
                            ),
                            TextSpan(
                              text: " Sign In",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: size.height * 0.0190,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    CustomRouter.nextScreen(context, '/login'),
                            ),
                          ],
                        ),
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
        ),
      ),
    );
  }
}
