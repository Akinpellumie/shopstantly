import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/widgets/dot_indicator.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import 'business_profile_tab.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;
  int _carouselCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 6,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(right: 20.0, top: 20.0),
      child: Column(
        children: <Widget>[
          TabBar(
            padding: const EdgeInsets.only(left: 10.0),
            tabs: getProductListTabs(selectedIndex),
            controller: _tabController,
            indicatorColor: kPrimaryColor,
            labelColor: kPrimaryColor,
            labelStyle: const TextStyle(fontFamily: kDefaultFont),
            isScrollable: true,
            indicator: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.transparent))),
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
            height: size.height * 0.20,
            margin: const EdgeInsets.only(top: 20.0),
            child: PageView.builder(
              itemCount: 2,
              pageSnapping: true,
              onPageChanged: (index) {
                setState(() {
                  _carouselCurrentIndex = index;
                });
              },
              itemBuilder: (context, pagePosition) {
                return Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    gradient: const LinearGradient(
                        colors: [kPrimaryOrangeColor, kSecondaryOrangeColor]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        AssetsPath.food,
                        width: size.width / 2 - 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10.0),
                        width: size.width / 2 - 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Special for you',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: size.height * 0.0125,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'Fried noodles with special chicken katsu',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: size.height * 0.0190,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 5.0,
                              ),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: size.height * 0.0125,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15.0),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2,
                (index) => DotIndicator(
                  index: index,
                ),
              ),
            ),
          ),
          // Flexible(
          //     child: SingleChildScrollView(
          //   child: Column(
          //     children: <Widget>[],
          //   ),
          // ))
        ],
      ),
    );
  }
}
