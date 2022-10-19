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
  //String selectedPhoneCode = '+234';
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
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 15.0,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Create a Shopper's  Account",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: size.height * 0.019,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Form(
                  key: _registerViewModel.formKey,
                  child: Column(
                    children: [
                      Container(
                        //width: size.width / 2 - 20,
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
                            // if (!val.isValidName) {
                            //   return 'Enter valid name';
                            // }
                            else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
                          textInputAction: TextInputAction.next,
                          controller: _registerViewModel.firstnameController,
                          keyboardType: TextInputType.text,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        //width: size.width,
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
                            // if (!val.isValidName) {
                            //   return 'Enter valid name';
                            // }
                            else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
                          textInputAction: TextInputAction.next,
                          controller: _registerViewModel.lastnameController,
                          keyboardType: TextInputType.text,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        child: TextFormField(
                          //initialValue: initialUser,
                          readOnly: _registerViewModel.creatingAccount,
                          decoration: ThemeHelper().textInputDecoration(
                            'Username',
                            'Choose Username',
                            const Icon(
                              Icons.verified_user,
                              color: kLightGrayColor,
                              size: 20.0,
                            ),
                            _registerViewModel.checkingUsername
                                ? Transform.scale(
                                    scale: 0.35,
                                    child: const CircularProgressIndicator(
                                      color: kPrimaryColor,
                                      strokeWidth: 4.0,
                                    ),
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
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (value) {
                            print(value);
                            String val =
                                _registerViewModel.usernameController.text;
                            _registerViewModel.checkUsernameAsync(
                              context,
                              val,
                            );
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter username';
                            }
                            // if (!val.isValidUserName) {
                            //   return 'Enter valid username.';
                            // }
                            else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
                          controller: _registerViewModel.usernameController,
                          keyboardType: TextInputType.text,
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        padding: EdgeInsets.zero,
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
                                      RegisterViewModel.countryCode =
                                          country.phoneCode;
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
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  border: Border.all(
                                      color: phoneEntryBorderColor, width: 1.0),
                                ),
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
                                      RegisterViewModel.countryCode,
                                      style: TextStyle(
                                        color: kPlaceholderColor,
                                        fontFamily: kDefaultFont,
                                        fontSize: size.height * 0.018,
                                      ),
                                    ),
                                    const Icon(
                                      UniconsLine.angle_down,
                                      color: kPlaceholderColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
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
                                ),
                                textInputAction: TextInputAction.next,
                                validator: (val) {
                                  if (val == "") {
                                    return 'Enter phone number';
                                  }
                                  // if (!val.isValidPhone) {
                                  //   return 'Enter valid phone number';
                                  // }
                                  else {
                                    return null;
                                  }
                                },
                                style: TextStyle(
                                  fontSize: size.height * 0.019,
                                  fontWeight: FontWeight.w500,
                                  color: kPrimaryTextColor,
                                  fontFamily: kDefaultFont,
                                ),
                                controller:
                                    _registerViewModel.phonenumberController,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
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
                          textInputAction: TextInputAction.next,
                          controller: _registerViewModel.emailController,
                          style: TextStyle(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
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
                            // if (!val.isValidPassword) {
                            //   return 'Enter valid password with combinations of Caps, small letter, number, and characters.';
                            // }
                            else {
                              return null;
                            }
                          },
                          textInputAction: TextInputAction.next,
                          style: TextStyle(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
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
                            // if (!val.isValidPassword) {
                            //   return 'Enter valid password with combinations of Caps, small letter, number, and characters.';
                            // }
                            if (val !=
                                _registerViewModel.passwordController.text) {
                              return 'Password does not match.';
                            } else {
                              return null;
                            }
                          },
                          textInputAction: TextInputAction.done,
                          style: TextStyle(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                          ),
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
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.height * 0.018,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Terms of Service of Use",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.018,
                                        fontFamily: kDefaultFont,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " & ",
                                      style: TextStyle(
                                        color: kPlaceholderColor,
                                        fontFamily: kDefaultFont,
                                        fontSize: size.height * 0.018,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Privacy Policy",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.018,
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
                        loading: _registerViewModel.creatingAccount,
                        onPressed: () {
                          _registerViewModel.registerNewUserAsync(context);
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
