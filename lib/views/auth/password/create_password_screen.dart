import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/base_app_bar.dart';

import 'components/phone_number_option_view.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Create New Password',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SafeArea(
        child: PhoneNumberOptionView(size: size),
      ),
    );
  }
}
