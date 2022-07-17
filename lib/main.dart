import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/activity/activity_screen.dart';
import 'package:shopstantly_app/views/auth/login/login_screen.dart';
import 'package:shopstantly_app/views/auth/register/otp_screen.dart';
import 'package:shopstantly_app/views/auth/register/register_screen.dart';
import 'package:shopstantly_app/views/base/page_switcher.dart';
import 'package:shopstantly_app/views/profile/add_photo_screen.dart';
import 'package:shopstantly_app/views/profile/choose_location_screen.dart';
import 'package:shopstantly_app/views/profile/profile_complete_screen.dart';
import 'package:shopstantly_app/views/profile/set_profile_screen.dart';
import 'package:shopstantly_app/views/unboarding/landing_screen.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:sizer/sizer.dart';

import 'views/auth/password/create_password_screen.dart';
import 'views/auth/password/forgot_password_screen.dart';
import 'views/auth/password/set_password_screen.dart';
import 'views/unboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          //navigatorObservers: <NavigatorObserver>[routeObserver],
          title: 'Shopstantly',
          theme: ThemeData(
            // This is the theme of your application.
            fontFamily: kDefaultFont,
            scaffoldBackgroundColor: kBackgroundColor,
            primaryColor: kPrimaryColor,
            primaryColorDark: kPrimaryColor,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  color: kPrimaryTextColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w600),
              bodyMedium: TextStyle(
                  color: kPrimaryTextColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400),
              bodySmall: TextStyle(
                  color: kPrimaryTextColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400),
              titleMedium: TextStyle(
                  color: kPrimaryTextColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w500),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: "/",
          onGenerateRoute: _onGenerateRoute,
        );
      },
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const OnboardingScreen();
      });
    case "/landing":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LandingScreen();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LoginScreen();
      });
    case "/register":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const RegisterScreen();
      });
    case "/forgotPassword":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const ForgotPasswordScreen();
      });
    case "/setNewPassword":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SetPasswordScreen();
      });
    case "/createPassword":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const CreatePasswordScreen();
      });
    case "/verifyOtp":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const OtpScreen();
      });
    case "/profileComplete":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const ProfileCompleteScreen();
      });
    case "/setProfile":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SetProfileScreen();
      });
    case "/addPhoto":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const AddPhotoScreen();
      });
    case "/chooseLocation":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const ChooseLocationScreen();
      });
    case "/activity":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const ActivityScreen();
      });
    case "/mainPage":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const PageSwitcher();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const OnboardingScreen();
      });
  }
}
