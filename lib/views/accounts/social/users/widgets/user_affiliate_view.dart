import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../../../utils/custom_router.dart';
import '../../../../../utils/dimensions.dart';
import '../../components/affiliate_card.dart';

class UserAffiliateView extends StatefulWidget {
  const UserAffiliateView({Key? key}) : super(key: key);

  @override
  State<UserAffiliateView> createState() => _UserAffiliateViewState();
}

class _UserAffiliateViewState extends State<UserAffiliateView> {
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
              header: Container(
                padding: const EdgeInsets.only(left: 20.0),
                margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
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
                  ],
                ),
              ),
              content: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 20.0, top: 5.0),
                    child: Column(
                      children: <Widget>[
                        GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 2 / 4.0,
                          crossAxisCount: 2,
                          padding: const EdgeInsets.only(left: 20.0),
                          children: generateNumbers().map((int i) {
                            return AffiliateCard(
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
