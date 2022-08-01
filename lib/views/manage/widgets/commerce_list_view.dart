import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/custom_router.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class CommerceListView extends StatefulWidget {
  const CommerceListView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CommerceListView> createState() => _CommerceListViewState();
}

class _CommerceListViewState extends State<CommerceListView> {
  bool isBuying = true;
  bool isSelling = false;
  bool isWishlist = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Wishlist Requests (12)',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: widget.size.height * 0.0180,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: 20.0,
              margin: const EdgeInsets.only(right: 5.0),
              child: SvgPicture.asset(AssetsPath.searchIcon),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.add,
                color: kPlaceholderColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
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
                  setState(() {
                    isBuying = true;
                    isSelling = false;
                    isWishlist = false;
                  });
                },
                child: Container(
                  width: widget.size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(
                    //vertical: 5.0,
                    horizontal: 8.0,
                  ),
                  height: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: isBuying ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Buying',
                      style: TextStyle(
                        color: isBuying ? kWhiteColor : kPrimaryColor,
                        fontSize: widget.size.height * 0.0150,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isWishlist,
                child: Container(
                  width: 0.5,
                  height: 25.0,
                  decoration: const BoxDecoration(
                    color: kPlaceholderColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isBuying = false;
                    isSelling = true;
                    isWishlist = false;
                  });
                },
                child: Container(
                  width: widget.size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(
                    //vertical: 5.0,
                    horizontal: 8.0,
                  ),
                  height: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: isSelling ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Selling',
                      style: TextStyle(
                        color: isSelling ? kWhiteColor : kPrimaryColor,
                        fontSize: widget.size.height * 0.0150,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isBuying,
                child: Container(
                  width: 0.5,
                  height: 25.0,
                  decoration: const BoxDecoration(
                    color: kPlaceholderColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isBuying = false;
                    isSelling = false;
                    isWishlist = true;
                  });
                },
                child: Container(
                  width: widget.size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(
                    //vertical: 5.0,
                    horizontal: 8.0,
                  ),
                  height: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: isWishlist ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Wishlist',
                      style: TextStyle(
                        color: isWishlist ? kWhiteColor : kPrimaryColor,
                        fontSize: widget.size.height * 0.0150,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        GestureDetector(
          onTap: () => CustomRouter.nextScreen(context, '/commerce'),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: widget.size.height * 0.075,
                        width: widget.size.height * 0.075,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://i.pravatar.cc/300?img=3',
                            ),
                          ),
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 2.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              border: Border.all(
                                color: kWhiteColor,
                                width: 2,
                              ),
                              color: kPrimaryColor),
                          // width: 30,
                          // height: 25,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '22',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0150,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Kerah Integrated Plc',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0160,
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            AssetsPath.pin,
                            color: kTimeTextColor.withOpacity(0.65),
                            width: widget.size.height * 0.0200,
                            height: widget.size.height * 0.0200,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.my_location_outlined,
                            color: kPlaceholderColor.withOpacity(0.75),
                            size: widget.size.height * 0.0200,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: Text(
                              'Ring Road, Ibadan. Oyo State',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0140,
                                fontWeight: FontWeight.normal,
                                color: kPlaceholderColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetsPath.cart,
                                    color: kPlaceholderColor.withOpacity(0.75),
                                    height: widget.size.height * 0.0200,
                                    width: widget.size.height * 0.0200,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '3 Of 4 Carts In Process',
                                      style: TextStyle(
                                        fontFamily: kDefaultFont,
                                        fontSize: widget.size.height * 0.0120,
                                        fontWeight: FontWeight.normal,
                                        color: kPlaceholderColor,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                FacePile(
                                  radius: 10,
                                  space: 15,
                                  images: const [
                                    NetworkImage(
                                        "https://i.pravatar.cc/300?img=1"),
                                    NetworkImage(
                                        "https://i.pravatar.cc/300?img=2"),
                                    NetworkImage(
                                        "https://i.pravatar.cc/300?img=3"),
                                  ],
                                  border:
                                      Border.all(color: kWhiteColor, width: 2),
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Flexible(
                                  child: Text(
                                    '+20 Total Items',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontWeight: FontWeight.normal,
                                      fontSize: widget.size.height * 0.0120,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 25.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: false,
                            itemCount: 3,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  //vertical: 3.0,
                                ),
                                margin: const EdgeInsets.only(right: 5.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kPrimaryColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Inquiry',
                                    style: TextStyle(
                                      fontFamily: kDefaultFont,
                                      fontSize: widget.size.height * 0.0130,
                                      fontWeight: FontWeight.normal,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        GestureDetector(
          onTap: () => CustomRouter.nextScreen(context, '/commerce'),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: widget.size.height * 0.075,
                        width: widget.size.height * 0.075,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://i.pravatar.cc/300?img=3',
                            ),
                          ),
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 2.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              border: Border.all(
                                color: kWhiteColor,
                                width: 2,
                              ),
                              color: kPrimaryColor),
                          // width: 30,
                          // height: 25,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '22',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0150,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Kerah Integrated Plc',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0160,
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            AssetsPath.pin,
                            color: kTimeTextColor.withOpacity(0.65),
                            width: widget.size.height * 0.0200,
                            height: widget.size.height * 0.0200,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.my_location_outlined,
                            color: kPlaceholderColor.withOpacity(0.75),
                            size: widget.size.height * 0.0200,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: Text(
                              'Ring Road, Ibadan. Oyo State',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0140,
                                fontWeight: FontWeight.normal,
                                color: kPlaceholderColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetsPath.cart,
                                    color: kPlaceholderColor.withOpacity(0.75),
                                    height: widget.size.height * 0.0200,
                                    width: widget.size.height * 0.0200,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '3 Of 4 Carts In Process',
                                      style: TextStyle(
                                        fontFamily: kDefaultFont,
                                        fontSize: widget.size.height * 0.0120,
                                        fontWeight: FontWeight.normal,
                                        color: kPlaceholderColor,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                FacePile(
                                  radius: 10,
                                  space: 15,
                                  images: const [
                                    NetworkImage(
                                        "https://i.pravatar.cc/300?img=1"),
                                    NetworkImage(
                                        "https://i.pravatar.cc/300?img=2"),
                                    NetworkImage(
                                        "https://i.pravatar.cc/300?img=3"),
                                  ],
                                  border:
                                      Border.all(color: kWhiteColor, width: 2),
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Flexible(
                                  child: Text(
                                    '+20 Total Items',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontWeight: FontWeight.normal,
                                      fontSize: widget.size.height * 0.0120,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 25.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: false,
                            itemCount: 3,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  //vertical: 3.0,
                                ),
                                margin: const EdgeInsets.only(right: 5.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kPrimaryColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Inquiry',
                                    style: TextStyle(
                                      fontFamily: kDefaultFont,
                                      fontSize: widget.size.height * 0.0130,
                                      fontWeight: FontWeight.normal,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
