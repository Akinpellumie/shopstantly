import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shopstantly_app/utils/base_app_bar.dart';

import '../../helpers/theme_helper.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_router.dart';
import '../../utils/dimensions.dart';

class SetProfileScreen extends StatefulWidget {
  const SetProfileScreen({Key? key}) : super(key: key);

  @override
  State<SetProfileScreen> createState() => _SetProfileScreenState();
}

class _SetProfileScreenState extends State<SetProfileScreen> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Set Profile',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                "Fill the following details to complete your profile.",
                style: TextStyle(
                  color: kDarkColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400,
                  fontSize: kNormalText,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Form(
                //key: _loginViewModel.formKey,
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration: ThemeHelper().textInputDecoration(
                          'Username',
                          'Choose Username',
                          null,
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        maxLines: 3,
                        maxLength: 300,
                        decoration: ThemeHelper().textInputDecoration(
                          'Bio',
                          'Add Bio',
                          null,
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
                      decoration: ThemeHelper().editorBoxDecorationShaddow(),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    AppButton(
                      text: "Next",
                      type: ButtonType.primary,
                      onPressed: () {
                        CustomRouter.nextScreen(context, "/addPhoto");
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
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
