import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/extensions/string_extension.dart';

import '../../helpers/theme_helper.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/custom_router.dart';
import '../../utils/dimensions.dart';

class AddPhotoScreen extends StatefulWidget {
  const AddPhotoScreen({Key? key}) : super(key: key);

  @override
  State<AddPhotoScreen> createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends State<AddPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Set Profile',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            children: [
              const Text(
                "Add a profile photo and a cover photo to your profile.",
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
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: <Widget>[
                  // background image and bottom contents
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kProfileBannerColor,
                      border: Border.all(color: Colors.white, width: 5.0),
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.cloud_download,
                        color: kPlaceholderColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top:
                        100.0, // (background container size) - (circle height / 2)
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kProfileBannerColor,
                        border: Border.all(color: Colors.white, width: 5.0),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15.0),
                        child: const Center(
                          child: Icon(
                            CupertinoIcons.cloud_download,
                            color: kPlaceholderColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70.0,
              ),
              Form(
                //key: _loginViewModel.formKey,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              //initialValue: initialUser,
                              //readOnly: _loginViewModel.loggingIn,
                              decoration: ThemeHelper().textInputDecoration(
                                'Username',
                                'Choose Username',
                                null,
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
                              //controller: _loginViewModel.userIdController,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Icon(
                            Icons.check_circle_outlined,
                            color: kYellowColor,
                            size: size.height * 0.03,
                          ),
                        ],
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      height: 55.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(color: kEntryBorderColor, width: 1.0)),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Select country',
                              style: TextStyle(
                                color: kDarkColor,
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.018,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.chevron_down,
                            size: size.height * 0.030,
                            color: kDarkColor,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
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
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Enter biography';
                          } else {
                            return null;
                          }
                        },
                        //controller: _loginViewModel.userIdController,
                        keyboardType: TextInputType.text,
                      ),
                      decoration: ThemeHelper().editorBoxDecorationShaddow(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              AppButton(
                text: "Next",
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/chooseLocation");
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
