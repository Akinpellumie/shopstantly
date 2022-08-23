import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/accounts/business/owners/business_account_owner_screen.dart';
import 'package:shopstantly_app/views/accounts/personal/owner/personal_account_owner_screen.dart';

import '../social/owners/social_account_owner_screen.dart';

class AccountSwitchScreen extends StatefulWidget {
  const AccountSwitchScreen({Key? key}) : super(key: key);

  @override
  State<AccountSwitchScreen> createState() => _AccountSwitchScreenState();
}

class _AccountSwitchScreenState extends State<AccountSwitchScreen> {
  String activeScreen = 'personal';
  @override
  Widget build(BuildContext context) {
    return getActiveScreen(activeScreen);
  }

  Widget getActiveScreen(String _activeScreen) {
    if (_activeScreen == 'personal') {
      return PersonalAccountOwnerScreen(
        callback: (val) => setState(
          () {
            activeScreen = val;
          },
        ),
      );
    } else if (_activeScreen == 'business') {
      return BusinessAccountOwnerScreen(
        callback: (val) => setState(
          () {
            activeScreen = val;
          },
        ),
      );
    } else if (_activeScreen == 'social') {
      return SocialAccountOwnerScreen(
        callback: (val) => setState(
          () {
            activeScreen = val;
          },
        ),
      );
    } else {
      return PersonalAccountOwnerScreen(
        callback: (val) => setState(
          () {
            activeScreen = val;
          },
        ),
      );
    }
  }
}
