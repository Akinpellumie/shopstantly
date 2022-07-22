import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/views/accounts/business/components/business_profile_tab.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import 'widgets/event_view.dart';
import 'widgets/info_view.dart';
import 'widgets/post_view.dart';
import 'widgets/product_view.dart';

class BusinessAccountScreen extends StatefulWidget {
  const BusinessAccountScreen({Key? key}) : super(key: key);

  @override
  State<BusinessAccountScreen> createState() => _BusinessAccountScreenState();
}

class _BusinessAccountScreenState extends State<BusinessAccountScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late double? _ratingValue;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      initialIndex: 0,
      vsync: this,
    );
  }

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
            //Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: const Text(
          '@layi',
          style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: kNormalText,
              color: kPrimaryTextColor,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsPath.searchIcon,
              color: kLightGrayColor,
              width: 25.0,
              height: 25.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsPath.settingsIcon,
              color: kLightGrayColor,
              width: 25.0,
              height: 25.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TabBar(
              padding: const EdgeInsets.only(left: 10.0),
              tabs: getBusinessTabs(size.width / 4),
              controller: _tabController,
              indicatorColor: kPrimaryColor,
              labelColor: kPrimaryColor,
              labelStyle: const TextStyle(fontFamily: kDefaultFont),
              isScrollable: true,
              indicator: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.transparent))),
              unselectedLabelColor: kLightGrayColor,
              unselectedLabelStyle: const TextStyle(
                color: kLightGrayColor,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1.0,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: const BoxDecoration(color: kLightGrayColor),
            ),
            Visibility(
              visible: selectedIndex == 0,
              child: InfoView(size: size),
            ),
            Visibility(
              visible: selectedIndex == 1,
              child: const ProductView(),
            ),
            Visibility(
              visible: selectedIndex == 2,
              child: const PostView(),
            ),
            Visibility(
              visible: selectedIndex == 3,
              child: const EventView(),
            ),
          ],
        ),
      ),
    );
  }
}
