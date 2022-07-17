import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../helpers/theme_helper.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class PostPhotosWidget extends StatelessWidget {
  const PostPhotosWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
  bool isTyping = false;
    return Flexible(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              DottedBorder(
                color: kPrimaryColor.withOpacity(0.5),
                strokeWidth: 1,
                dashPattern: const [10, 5],
                radius: const Radius.circular(10.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  height: size.height * 0.20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Post Picture with different angles of the product ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.015,
                          color: kPrimaryTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 5.0,
                            ),
                            height: size.height * 0.085,
                            width: size.width / 4 - 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: kPostCardBgColor,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: kPrimaryColor,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 5.0,
                            ),
                            height: size.height * 0.085,
                            width: size.width / 4 - 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: kPostCardBgColor,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: kPrimaryColor,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 5.0,
                            ),
                            height: size.height * 0.085,
                            width: size.width / 4 - 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: kPostCardBgColor,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: kPrimaryColor,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 5.0,
                            ),
                            height: size.height * 0.085,
                            width: size.width / 4 - 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: kPostCardBgColor,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration: ThemeHelper().postInputDecoration(
                          'Product Name',
                          'Enter Product Name',
                          true,
                          kPostEntryBgColor.withOpacity(0.90),
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
                      decoration: BoxDecoration(
                        //color: kLightGrayColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      child: TextFormField(
                        //initialValue: initialUser,
                        //readOnly: _loginViewModel.loggingIn,
                        decoration: ThemeHelper().postInputDecoration(
                          'Product Description',
                          'Enter Description',
                          true,
                          kPostEntryBgColor.withOpacity(0.90),
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
                        maxLines: 3,
                        maxLength: 400,
                      ),
                      // decoration: BoxDecoration(
                      //   color: kLightGrayColor,
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
                      decoration: ThemeHelper().editorBoxDecorationShaddow(),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: kPostEntryBgColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1.0,
                          color: kPrimaryColor.withOpacity(0.50),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            child: Row(
                              children: const <Widget>[
                                Text(
                                  'NGN',
                                  style: TextStyle(
                                    color: kPostEntryTextColor,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: kPostEntryTextColor,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              //initialValue: initialUser,
                              //readOnly: _loginViewModel.loggingIn,
                              decoration: ThemeHelper().postInputDecoration(
                                ' Price   ',
                                'Enter Price',
                                false,
                                Colors.transparent,
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
                              onChanged: (value) {
                                isTyping = true;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.050,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: size.width / 2 - 30,
                          margin: const EdgeInsets.only(right: 5.0),
                          child: AppButton(
                            text: "Save as Draft",
                            type: ButtonType.plain,
                            onPressed: () {
                              //CustomRouter.nextScreen(context, "/addPhoto");
                            },
                          ),
                        ),
                        Container(
                          width: size.width / 2 - 30,
                          margin: const EdgeInsets.only(left: 5.0),
                          child: AppButton(
                            text: "Post",
                            type: ButtonType.primary,
                            onPressed: () {
                              //CustomRouter.nextScreen(context, "/addPhoto");
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
