import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/custom_three_tab.dart';

class StoreView extends StatefulWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  int carouselIndex = 0;
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => SizedBox(
                //padding: const EdgeInsets.only(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 40.0,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kPlaceholderColor.withOpacity(0.5),
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                //widget.callback(0);
                                setState(() {
                                  tabIndex = 0;
                                });
                              },
                              child: Container(
                                width: size.width / 2 - 30,
                                padding: const EdgeInsets.symmetric(
                                  //vertical: 5.0,
                                  horizontal: 8.0,
                                ),
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: tabIndex == 0
                                      ? kPrimaryColor
                                      : Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    'Listing',
                                    style: TextStyle(
                                      color: tabIndex == 0
                                          ? kWhiteColor
                                          : kPrimaryColor,
                                      fontSize: size.height * 0.0150,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // widget.callback(1);
                                setState(() {
                                  tabIndex = 1;
                                });
                              },
                              child: Container(
                                width: size.width / 2 - 30,
                                padding: const EdgeInsets.symmetric(
                                  //vertical: 5.0,
                                  horizontal: 8.0,
                                ),
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: tabIndex == 1
                                      ? kPrimaryColor
                                      : Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    'Affiliate',
                                    style: TextStyle(
                                      color: tabIndex == 1
                                          ? kWhiteColor
                                          : kPrimaryColor,
                                      fontSize: size.height * 0.0150,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: size.height * 0.15,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: PageView.builder(
                        itemCount: imageList.length,
                        pageSnapping: true,
                        onPageChanged: (index) {
                          setState(() {
                            carouselIndex = index;
                          });
                        },
                        itemBuilder: (context, pagePosition) {
                          return SizedBox(
                            width: size.width - 40,
                            height: size.height * 0.20,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: Image.network(
                                imageList[pagePosition],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          imageList.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.50,
                            width: size.width,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: Image.network(
                                imageList[0],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            margin: const EdgeInsets.only(top: 10.0),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Furniture Category',
                                    style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimaryColor,
                                      fontFamily: kDefaultFont,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: kPrimaryColor,
                                  size: size.height * 0.03,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: carouselIndex == index
            ? Theme.of(context).primaryColor
            : kPrimaryAccentColor,
      ),
    );
  }

  List<String> imageList = [
    'https://images.pexels.com/photos/3768005/pexels-photo-3768005.jpeg?cs=srgb&dl=pexels-william-matt-3768005.jpg&fm=jpg',
    'https://cdn2.howtostartanllc.com/images/business-ideas/business-idea-images/Furniture-Store.jpg',
    'https://media.istockphoto.com/photos/shoes-sport-in-front-store-buing-in-market-center-picture-id1147089911?k=20&m=1147089911&s=612x612&w=0&h=o1CFg31pAB6g4aQSc9Ol6pqDRUWp_OZIdoLX443bt40=',
  ];
}
