import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../helpers/theme_helper.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({Key? key}) : super(key: key);

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  String selectedDate = 'Select Date';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kDarkColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Create Event',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontFamily: kDefaultFont,
                fontSize: kNormalText,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: kIconColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
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
                          'Add Cover Photo',
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
                        Icon(
                          Icons.add,
                          color: kPrimaryColor,
                          size: size.height * 0.055,
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
                            'Event Name',
                            'Enter event name',
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
                          color: kLightGrayColor,
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
                            'Event Type',
                            'Enter event type',
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
                          color: kLightGrayColor,
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
                            'Event Venue',
                            'Enter event venue',
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
                          color: kLightGrayColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Container(
                        height: 60.0,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: kPostEntryBgColor,
                          borderRadius: BorderRadius.circular(10.0),
                          // border: Border.all(
                          //   width: 1.0,
                          //   color: kPrimaryColor.withOpacity(0.50),
                          // ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                selectedDate,
                                style: const TextStyle(
                                    color: kPostEntryTextColor,
                                    fontSize: kNormalText,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const Icon(
                              CupertinoIcons.calendar,
                              color: kPostEntryTextColor,
                              size: 25.0,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.050,
                      ),
                      AppButton(
                        text: "Create Event",
                        type: ButtonType.primary,
                        onPressed: () {
                          //CustomRouter.nextScreen(context, "/addPhoto");
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
