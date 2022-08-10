import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../helpers/theme_helper.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';


class VehicleFirstStage extends StatelessWidget {
  const VehicleFirstStage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          //key: _loginViewModel.formKey,
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      width: size.width / 2 - 20,
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration:
                            ThemeHelper().textInputDecoration(
                          'First Name',
                          'Enter first name',
                          const Icon(
                            Icons.person,
                            color: kLightGrayColor,
                            size: 15.0,
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
                        style: TextStyle(
                            fontSize: size.height * 0.0170),
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
                        //readOnly: _loginViewModel.loggingIn,
                        decoration:
                            ThemeHelper().textInputDecoration(
                          'Last Name',
                          'Enter last name',
                          const Icon(
                            Icons.person,
                            color: kLightGrayColor,
                            size: 15.0,
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
                        style: TextStyle(
                            fontSize: size.height * 0.0170),
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
                  //initialValue: initialUser,
                  //readOnly: _loginViewModel.loggingIn,
                  decoration: ThemeHelper().textInputDecoration(
                    'Email',
                    'Enter Mail',
                    const Icon(
                      AssetsPath.email,
                      color: kLightGrayColor,
                      size: 15.0,
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
                decoration:
                    ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 15.0),
              Container(
                child: TextFormField(
                  //initialValue: initialUser,
                  //readOnly: _loginViewModel.loggingIn,
                  decoration: ThemeHelper().textInputDecoration(
                    'Address',
                    'Enter Address',
                    const Icon(
                      Icons.location_on,
                      color: kLightGrayColor,
                      size: 15.0,
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
                decoration:
                    ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 15.0),
              Container(
                child: TextFormField(
                  //initialValue: initialUser,
                  //readOnly: _loginViewModel.loggingIn,
                  decoration: ThemeHelper().textInputDecoration(
                    'NIN Number',
                    'Enter NIN Number',
                    const Icon(
                      Icons.contacts,
                      color: kLightGrayColor,
                      size: 15.0,
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
                decoration:
                    ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 15.0),
              Container(
                height: size.height * 0.20,
                width: size.width - 30,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: kPlaceholderColor.withOpacity(0.40)),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_photo_alternate_outlined,
                        color: kPlaceholderColor,
                        size: size.height * 0.08,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Take a picture of  your drivers Licence',
                        style: TextStyle(
                          fontSize: size.height * 0.0140,
                          fontWeight: FontWeight.w300,
                          fontFamily: kDefaultFont,
                          color: kPlaceholderColor,
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
          height: 50.0,
        ),
        AppButton(
          text: "Continue",
          type: ButtonType.primary,
          onPressed: () {
            //CustomRouter.nextScreen(context, "/logistic-verfiy");
          },
        ),
      ],
    );
  }
}
