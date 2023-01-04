import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:shopstantly_app/utils/view_model_provider.dart';
import 'package:shopstantly_app/views/base/page_switcher.dart';
import 'package:shopstantly_app/views/unboarding/onboarding_screen.dart';
import 'package:sizer/sizer.dart';

import 'utils/router_generator.dart';
import 'view_models/common/app_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: viewModelProviders,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Consumer<AppViewModel>(
        builder: (_, value, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
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
                  fontWeight: FontWeight.w500,
                ),
              ),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            //initialRoute: "/",
            home: value.isFirstRun
                ? const OnboardingScreen()
                : const PageSwitcher(),
            onGenerateRoute: generateRouter,
          );
        },
      ),
    );
  }
}
