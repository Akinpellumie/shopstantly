import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/widgets/dot_indicator.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/custom_router.dart';
import '../../../../../utils/dimensions.dart';
import '../../components/social_profile_tab.dart';
import '../../components/merchandize_card.dart';

class UserMerchandizeView extends StatefulWidget {
  const UserMerchandizeView({Key? key}) : super(key: key);

  @override
  State<UserMerchandizeView> createState() => _UserMerchandizeViewState();
}

class _UserMerchandizeViewState extends State<UserMerchandizeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;
  int catIndex = 0;
  //int _carouselCurrentIndex = 0;

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
    return Flexible(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 1,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return StickyHeader(
              header: TabBar(
                padding: const EdgeInsets.only(left: 10.0),
                tabs: getProductListTabs(selectedIndex),
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
              content: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 20.0, top: 5.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: size.height * 0.20,
                          margin: const EdgeInsets.only(top: 20.0),
                          child: PageView.builder(
                            itemCount: 2,
                            pageSnapping: true,
                            onPageChanged: (index) {
                              setState(() {
                                //_carouselCurrentIndex = index;
                              });
                            },
                            itemBuilder: (context, pagePosition) {
                              return Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                decoration: BoxDecoration(
                                  color: kOrangeColor,
                                  gradient: const LinearGradient(colors: [
                                    kPrimaryLinkColor,
                                    kSecondaryOrangeColor
                                  ]),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      AssetsPath.food,
                                      width: size.width / 2 - 20,
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      width: size.width / 2 - 20,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
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
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          // change your height based on preference
                          height: 40,
                          width: double.infinity,
                          child: ListView(
                            // set the scroll direction to horizontal
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              // add your widgets here
                              Container(
                                width: size.width / 4 - 10,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Center(
                                  child: Text(
                                    'Category A',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontFamily: kDefaultFont,
                                      fontSize: size.width * 0.030,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: size.width / 4 - 10,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                decoration: BoxDecoration(
                                    color: kCategoryTabColor,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Center(
                                  child: Text(
                                    'Category B',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontSize: size.width * 0.030,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: size.width / 4 - 10,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                decoration: BoxDecoration(
                                    color: kCategoryTabColor,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Center(
                                  child: Text(
                                    'Category B',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontSize: size.width * 0.030,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: size.width / 4 - 10,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                decoration: BoxDecoration(
                                    color: kCategoryTabColor,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Center(
                                  child: Text(
                                    'Category D',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontSize: size.width * 0.030,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),

                              // space them using a sized box
                              const SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 2 / 5.0,
                          crossAxisCount: 2,
                          padding: const EdgeInsets.only(left: 20.0),
                          children: generateNumbers().map((int i) {
                            return MerchandizeCard(
                              size: size,
                              onTapped: () => CustomRouter.nextScreen(
                                  context, "/productDetail"),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  List<int> generateNumbers() => List<int>.generate(6, (i) => i + 1);
}
