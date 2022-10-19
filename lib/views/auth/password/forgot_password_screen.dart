import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopstantly_app/extensions/string_extension.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/app_styling.dart';
import 'package:shopstantly_app/utils/base_app_bar.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

import '../../../helpers/theme_helper.dart';
import '../../../utils/assets_path.dart';
import '../../../view_models/auth/forgot_password_view_model.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ForgotPasswordViewModel viewModel =
        context.watch<ForgotPasswordViewModel>();
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Forgot Password',
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
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fill-in your credentials below.',
                    style: TextStyle(
                      fontSize: size.height * 0.020,
                      fontWeight: FontWeight.w500,
                      color: kPrimaryTextColor,
                      fontFamily: kDefaultFont,
                    ),
                  ),
                  // Text(
                  //   '* An email Fill-in your credentials below.',
                  //   style: TextStyle(
                  //     fontSize: size.height * 0.020,
                  //     fontWeight: FontWeight.w500,
                  //     color: kPrimaryTextColor,
                  //     fontFamily: kDefaultFont,
                  //   ),
                  // ),
                  const SizedBox(height: 20.0),
                  Form(
                    key: viewModel.formKey,
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            //readOnly: viewModel.loggingIn,
                            decoration: ThemeHelper().textInputDecoration(
                              'Email',
                              'Enter Mail',
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
                            textInputAction: TextInputAction.done,
                            controller: viewModel.emailController,
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
                        const SizedBox(
                          height: 50.0,
                        ),
                        AppButton(
                          text: "Proceed",
                          type: ButtonType.primary,
                          loading: viewModel.sending,
                          onPressed: () {
                            viewModel.forgotPassword(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
