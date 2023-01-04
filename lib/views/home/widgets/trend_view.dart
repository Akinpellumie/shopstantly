import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/custom_router.dart';

import '../../../data/choice_chips.dart';
import '../../../data/trend_text_menus.dart';
import '../../../models/common/choice_chip_data.dart';
import '../../../models/common/text_menu.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class TrendView extends StatefulWidget {
  final Size size;
  const TrendView({Key? key, required this.size}) : super(key: key);

  @override
  State<TrendView> createState() => _TrendViewState();
}

class _TrendViewState extends State<TrendView> {
  final double spacing = 7;
  List<ChoiceChipData> choiceChips = ChoiceChips.all;
  List<TextMenu> carouselMenus = TrendTextMenus.carouselTextMenus;
  List<TextMenu> qwikMenus = TrendTextMenus.qwikTextMenus;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Popular Mentions',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.height * 0.018,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  color: kPrimaryTextColor.withOpacity(0.45),
                  fontSize: size.height * 0.015,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 0.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: choiceChips.length,
                  itemBuilder: (context, index) {
                    return index.isEven ? buildChoiceChips(size) : Container();
                  },
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: choiceChips.length,
                  itemBuilder: (context, index) {
                    return index.isOdd ? buildChoiceChips(size) : Container();
                  },
                ),
              )
            ],
          ),
          //buildChoiceChips(size),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Qwiks',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.height * 0.018,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Text(
              //   'see all',
              //   style: TextStyle(
              //     color: kPrimaryTextColor.withOpacity(0.45),
              //     fontSize: size.height * 0.015,
              //     fontFamily: kDefaultFont,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.center,
          height: 20.0,
          width: size.width,
          padding: const EdgeInsets.only(left: 20.0),
          child: Center(
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: qwikMenus.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      for (int i = 0; i < qwikMenus.length; i++) {
                        index == i
                            ? qwikMenus[i].active = true
                            : qwikMenus[i].active = false;
                      }
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: 25.0,
                    ),
                    child: Text(
                      qwikMenus[index].title,
                      style: TextStyle(
                        color: qwikMenus[index].active
                            ? kPrimaryTextColor
                            : kPlaceholderColor,
                        fontSize: size.height * 0.017,
                        fontWeight: qwikMenus[index].active
                            ? FontWeight.w600
                            : FontWeight.normal,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Container(
          height: size.height * 0.28,
          padding: EdgeInsets.zero,
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: imageUrls.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  CustomRouter.nextScreen(context, '/qwikScreen');
                },
                child: Container(
                  width: size.width * 0.325,
                  height: size.height * 0.25,
                  margin: const EdgeInsets.only(right: 3.0),
                  child: ClipRRect(
                    // borderRadius: const BorderRadius.all(
                    //   Radius.circular(10.0),
                    // ),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0.0,
                          child: Container(
                            width: size.width * 0.325,
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            color: Colors.black12.withOpacity(0.65),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2.0,
                                    vertical: 2.0,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kPlaceholderColor,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.asset(
                                      AssetsPath.image2,
                                      fit: BoxFit.cover,
                                      height: 25.0,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Tolani Favor',
                                          style: TextStyle(
                                            color: kWhiteColor,
                                            fontFamily: kDefaultFont,
                                            fontSize: size.width * 0.0190,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        const Icon(
                                          Icons.verified_user,
                                          color: kOrangeColor,
                                          size: 12.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '@tolani_soft',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontFamily: kDefaultFont,
                                        fontSize: size.width * 0.0180,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Interests',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.height * 0.018,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  color: kPrimaryTextColor.withOpacity(0.45),
                  fontSize: size.height * 0.015,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          height: 30.0,
          padding: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: carouselMenus.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < carouselMenus.length; i++) {
                      index == i
                          ? carouselMenus[i].active = true
                          : carouselMenus[i].active = false;
                    }
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 25.0,
                  ),
                  child: Text(
                    carouselMenus[index].title,
                    style: TextStyle(
                      color: carouselMenus[index].active
                          ? kPrimaryTextColor
                          : kPlaceholderColor,
                      fontSize: size.height * 0.017,
                      fontWeight: carouselMenus[index].active
                          ? FontWeight.w600
                          : FontWeight.normal,
                      fontFamily: kDefaultFont,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 15.0,
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    SizedBox.square(
                      dimension: 70.0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2021's most brilliant horror movie",
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: size.height * 0.019,
                              fontFamily: kDefaultFont,
                            ),
                          ),
                          Text(
                            "The new Candyman and how horror is with reckoning and racism",
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: size.height * 0.017,
                              fontFamily: kDefaultFont,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Esther Howard',
                                style: TextStyle(
                                  color: kPlaceholderColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.015,
                                  fontFamily: kDefaultFont,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                  color: kPlaceholderColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.015,
                                  fontFamily: kDefaultFont,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '3h ago',
                                style: TextStyle(
                                  color: kPlaceholderColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.015,
                                  fontFamily: kDefaultFont,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.0,
                width: size.width,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildChoiceChips(Size size) => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: choiceChips
            .map(
              (choiceChip) => ChoiceChip(
                label: Text(choiceChip.label),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: choiceChip.isSelected ? kWhiteColor : kTabTextColor,
                  fontSize: size.height * 0.015,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7.0),
                  ),
                  // side: BorderSide(
                  //   color: kPrimaryColor,
                  //   width: 1.0,
                  // ),
                ),
                onSelected: (isSelected) => setState(() {
                  choiceChips = choiceChips.map((otherChip) {
                    final newChip = otherChip.copy(
                        isSelected: false, label: choiceChip.label);

                    return choiceChip == newChip
                        ? newChip.copy(
                            isSelected: isSelected, label: choiceChip.label)
                        : newChip;
                  }).toList();
                }),
                selected: choiceChip.isSelected,
                selectedColor: kPrimaryColor,
                backgroundColor:
                    choiceChip.isSelected ? kPrimaryColor : kIconBgColor,
              ),
            )
            .toList(),
      );
  List<String> imageUrls = [
    'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
    AssetsPath.profileImageUrl,
    'https://images.pexels.com/photos/2050994/pexels-photo-2050994.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1709003/pexels-photo-1709003.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ];
}
