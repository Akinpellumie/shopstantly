import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/base_app_bar.dart';
import '../../../utils/dimensions.dart';

class PersonalMainWalletScreen extends StatefulWidget {
  const PersonalMainWalletScreen({Key? key}) : super(key: key);

  @override
  State<PersonalMainWalletScreen> createState() =>
      _PersonalMainWalletScreenState();
}

class _PersonalMainWalletScreenState extends State<PersonalMainWalletScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Hello Dotun Felix',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: Column(
        children: [
          Container(
            height: 50.0,
            margin:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Personal Wallet',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0200,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: kWhiteColor,
                  size: size.height * 0.0300,
                ),
              ],
            ),
          ),
          Flexible(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  leadingWidth: 0.0,
                  elevation: 0.0,
                  automaticallyImplyLeading: true,
                  pinned: true,
                  backgroundColor: kBackgroundColor,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    centerTitle: false,
                    title: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Personal Wallet',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0180,
                              color: kPrimaryTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: kWhiteColor,
                            size: size.height * 0.0200,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(),
                    childCount: 1,
                  ),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
