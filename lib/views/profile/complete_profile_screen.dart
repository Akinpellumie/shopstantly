import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:shopstantly_app/utils/helpers.dart';

import '../../helpers/theme_helper.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/custom_router.dart';
import '../../utils/dimensions.dart';
import '../../view_models/auth/complete_profile_view_model.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  /// Variables to store country state city data in onChanged method.
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
  String userID = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CompleteProfileViewModel viewModel =
        context.watch<CompleteProfileViewModel>();
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    userID = arguments['userID'] as String;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Complete Profile',
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
                "Complete your account registration below.",
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
                  GestureDetector(
                    onTap: () => viewModel.selectBgToUpload(context, userID),
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kProfileBannerColor,
                        border: Border.all(color: Colors.white, width: 5.0),
                      ),
                      child: viewModel.isBgImageSelected
                          ? Stack(
                              fit: StackFit.loose,
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  clipBehavior: Clip.hardEdge,
                                  child: Image.file(
                                    viewModel.selectedBgImageFile!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                viewModel.uploadingBg
                                    ? const Positioned(
                                        child: SizedBox.square(
                                          dimension: 30.0,
                                          child: CircularProgressIndicator(
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            )
                          : const Center(
                              child: Icon(
                                CupertinoIcons.cloud_download,
                                color: kPlaceholderColor,
                              ),
                            ),
                    ),
                  ),
                  Positioned(
                    top:
                        100.0, // (background container size) - (circle height / 2)
                    child: GestureDetector(
                      onTap: () => viewModel.selectDpToUpload(context, userID),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kProfileBannerColor,
                          border: Border.all(color: Colors.white, width: 5.0),
                        ),
                        child: viewModel.isDpImageSelected
                            ? Stack(
                                fit: StackFit.loose,
                                alignment: Alignment.center,
                                children: [
                                  ClipOval(
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.file(
                                      viewModel.selectedDpImageFile!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  viewModel.uploadingDp
                                      ? const Positioned(
                                          child: SizedBox.square(
                                            dimension: 30.0,
                                            child: CircularProgressIndicator(
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(),
                                ],
                              )
                            : Container(
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
                  ),
                ],
              ),
              const SizedBox(
                height: 70.0,
              ),
              Form(
                key: viewModel.formKey,
                child: Column(
                  children: [
                    ///Adding CSC Picker Widget in app
                    CSCPicker(
                      ///Enable disable state dropdown [OPTIONAL PARAMETER]
                      showStates: true,

                      /// Enable disable city drop down [OPTIONAL PARAMETER]
                      showCities: true,

                      ///Enable (get flat with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                      flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,

                      ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                      dropdownDecoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1)),

                      ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                      disabledDropdownDecoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey.shade300,
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1)),

                      ///selected item style [OPTIONAL PARAMETER]
                      selectedItemStyle: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: size.height * 0.017,
                      ),

                      ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                      dropdownHeadingStyle: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: size.height * 0.017,
                        fontWeight: FontWeight.bold,
                      ),

                      ///DropdownDialog Item style [OPTIONAL PARAMETER]
                      dropdownItemStyle: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: size.height * 0.017,
                      ),

                      ///Dialog box radius [OPTIONAL PARAMETER]
                      dropdownDialogRadius: 10.0,

                      ///Search bar radius [OPTIONAL PARAMETER]
                      searchBarRadius: 10.0,

                      ///triggers once country selected in dropdown
                      onCountryChanged: (value) {
                        setState(() {
                          ///store value in country variable
                          countryValue = value;
                        });
                      },

                      ///triggers once state selected in dropdown
                      onStateChanged: (value) {
                        setState(() {
                          ///store value in state variable
                          stateValue = value ?? "";
                        });
                      },

                      ///triggers once city selected in dropdown
                      onCityChanged: (value) {
                        setState(() {
                          ///store value in city variable
                          cityValue = value ?? "";
                        });
                      },
                    ),

                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: TextFormField(
                        //initialValue: initialUser,
                        readOnly: viewModel.sendingRequest,
                        maxLines: 3,
                        maxLength: 300,
                        decoration: ThemeHelper().textInputDecoration(
                          'Bio',
                          'Add Bio',
                          null,
                          null,
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Enter biography';
                          } else {
                            return null;
                          }
                        },
                        controller: viewModel.bioInfoController,
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
                text: "Submit",
                type: ButtonType.primary,
                loading: viewModel.sendingRequest,
                onPressed: () {
                  bool checks =
                      canSendRequest(cityValue, countryValue, stateValue);
                  if (checks) {
                    viewModel.completeProfileRequestAsync(
                      context,
                      cityValue,
                      countryValue,
                      stateValue,
                      userID,
                    );
                  }
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

  bool canSendRequest(
    String _cityValue,
    String _countryValue,
    String _stateValue,
  ) {
    if (_cityValue.isEmpty) {
      displayToast('Select current city.', kPrimaryAccentColor);
      return false;
    }
    if (_stateValue.isEmpty) {
      displayToast('Select current state.', kPrimaryAccentColor);
      return false;
    }
    if (_countryValue.isEmpty) {
      displayToast('Select current state.', kPrimaryAccentColor);
      return false;
    } else {
      return true;
    }
  }
}
