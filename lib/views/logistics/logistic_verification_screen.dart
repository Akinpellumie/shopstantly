import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shopstantly_app/enums/vehicle_type.dart';

import '../../helpers/theme_helper.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';
import '../../utils/dimensions.dart';
import 'widgets/vehicle_first_stage.dart';

class LogisticVerificationScreen extends StatefulWidget {
  const LogisticVerificationScreen({Key? key}) : super(key: key);

  @override
  State<LogisticVerificationScreen> createState() =>
      _LogisticVerificationScreenState();
}

class _LogisticVerificationScreenState
    extends State<LogisticVerificationScreen> {
  int selectedIndex = 0;
  VehicleType? vehicleType = VehicleType.car;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace_rounded,
          color: kPrimaryColor,
          size: size.height * 0.0250,
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Logistics',
            style: TextStyle(
              fontSize: size.height * 0.0170,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverAppBar(
            leadingWidth: 0.0,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: kBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: menuTabItem(
                          size,
                          'Vehicles',
                          selectedIndex == 0 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: menuTabItem(
                          size,
                          'Towing Vehicles',
                          selectedIndex == 1 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: menuTabItem(
                          size,
                          'Bike',
                          selectedIndex == 2 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 3;
                          });
                        },
                        child: menuTabItem(
                          size,
                          'Ambulance',
                          selectedIndex == 3 ? true : false,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    color: kPlaceholderColor.withOpacity(0.35),
                    height: 0.5,
                    width: size.width,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Visibility(
              visible: selectedIndex == 0,
              child: Container(
                margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            vehicleType = VehicleType.car;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Car',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0150,
                                fontWeight: FontWeight.normal,
                                color: vehicleType == VehicleType.car
                                    ? kPrimaryColor
                                    : kPlaceholderColor,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              color: vehicleType == VehicleType.car
                                  ? kPrimaryColor
                                  : Colors.transparent,
                              height: 0.5,
                              width: 30.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width / 3,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            vehicleType = VehicleType.bus;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Bus',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0150,
                                fontWeight: FontWeight.normal,
                                color: vehicleType == VehicleType.bus
                                    ? kPrimaryColor
                                    : kPlaceholderColor,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              color: vehicleType == VehicleType.bus
                                  ? kPrimaryColor
                                  : Colors.transparent,
                              height: 0.5,
                              width: 30.0,
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, _index) => Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                // VehicleFirstStage(size: size)
                child: Column(
                  children: [
                    Form(
                      //key: _loginViewModel.formKey,
                      child: Column(
                        children: [
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
                          const SizedBox(height: 15.0),
                          Container(
                            child: TextFormField(
                              //initialValue: initialUser,
                              //readOnly: _loginViewModel.loggingIn,
                              decoration: ThemeHelper().textInputDecoration(
                                'Car Name',
                                'Enter car name',
                                const Icon(
                                  Icons.local_taxi,
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
                                'Car Model',
                                'Enter car model',
                                const Icon(
                                  Icons.local_taxi,
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
                                'Car Color',
                                'Enter car color',
                                const Icon(
                                  Icons.local_taxi,
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
                                'Plate Number',
                                'Enter car plate number',
                                const Icon(
                                  Icons.local_taxi,
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
                                'Car Description',
                                'Enter car description',
                                const Icon(
                                  Icons.local_taxi,
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
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox menuTabItem(Size size, String title, bool active) {
    return SizedBox(
      //width: boxWidth,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: kDefaultFont,
          fontSize: size.height * 0.0150,
          fontWeight: FontWeight.normal,
          color: active ? kPrimaryColor : kPlaceholderColor,
        ),
      ),
    );
  }
}
