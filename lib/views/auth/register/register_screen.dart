import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:unicons/unicons.dart';

import '../../../helpers/theme_helper.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styling.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/base_app_bar.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/dimensions.dart';

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
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Create account',
        appBar: AppBar(),
        showLogo: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 50.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create an Account',
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
                            'Full Name',
                            'Enter full name',
                            const Icon(
                              Icons.person,
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
                      const SizedBox(height: 20.0),
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
                                //readOnly: _loginViewModel.loggingIn,
                                decoration: ThemeHelper().textInputDecoration(
                                  'Phone Number',
                                  'Enter phone number',
                                  null,
                                  false,
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    phoneEntryBorderColor = kPrimaryColor;
                                    print("First text field: $text");
                                  });
                                },
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
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(
                              color: phoneEntryBorderColor, width: 1.0),
                        ),
                      ),
                      const SizedBox(height: 20.0),
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
                      const SizedBox(height: 20.0),
                      Container(
                        child: TextFormField(
                          // readOnly: _loginViewModel.loggingIn,
                          // controller: _loginViewModel.passwordController,
                          obscureText: _obscureText,
                          obscuringCharacter: "*",
                          decoration: ThemeHelper().passwordInputDecoration(
                            'Create Password',
                            'Enter password',
                            null,
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
                            'Enter password',
                            null,
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: CheckboxListTile(
                          title: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "By clicking Register, you agree to our ",
                                  style: TextStyle(
                                    color: kDarkColor,
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.015,
                                  ),
                                ),
                                WidgetSpan(
                                  child: InkWell(
                                    onTap: () {
                                      // ignore: avoid_print
                                      print('Conditions of Use');
                                    },
                                    child: Text(
                                      "Terms of Service of Use",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.015,
                                        fontFamily: kDefaultFont,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: " and ",
                                  style: TextStyle(
                                    color: kDarkColor,
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.015,
                                  ),
                                ),
                                WidgetSpan(
                                  child: InkWell(
                                    onTap: () {
                                      // ignore: avoid_print
                                      print('Privacy Policy');
                                    },
                                    child: Text(
                                      "Privacy Policy",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.015,
                                        fontFamily: kDefaultFont,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          activeColor: kPrimaryColor,
                          value: _acceptTerms,
                          onChanged: (newValue) {
                            setState(() {
                              _acceptTerms = newValue!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      AppButton(
                        text: "Create Account",
                        type: ButtonType.primary,
                        onPressed: () {
                          CustomRouter.nextScreen(context, "/verifyOtp");
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                                color: kPrimaryTextColor,
                                fontFamily: kDefaultFont,
                                fontSize: kNormalText,
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, "/login"),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: kDefaultFont,
                                  fontSize: kNormalText,
                                  fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
