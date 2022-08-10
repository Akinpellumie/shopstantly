import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

import '../../utils/app_button.dart';
import '../../utils/custom_router.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Logistics',
                  style: TextStyle(
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi Blackkie,',
                        style: TextStyle(
                          fontSize: size.height * 0.0300,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Please kindly apply for verification to have access to this service.\nAs much as we promise you verified drivers. We have also promised drivers, verified riders. For a safe and secure service for everyone.',
                        style: TextStyle(
                          fontSize: size.height * 0.0140,
                          fontWeight: FontWeight.w300,
                          color: kPlaceholderColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(
                text: "Apply For Verification",
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/logistic-verfiy");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
