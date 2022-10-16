import 'package:flutter/material.dart';

import '../../../data/choice_chips.dart';
import '../../../data/trend_text_menus.dart';
import '../../../models/common/choice_chip_data.dart';
import '../../../models/common/text_menu.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class TrendView extends StatefulWidget {
  final Size size;
  const TrendView({Key? key, required this.size}) : super(key: key);

  @override
  State<TrendView> createState() => _TrendViewState();
}

class _TrendViewState extends State<TrendView> {
  final double spacing = 8;
  List<ChoiceChipData> choiceChips = ChoiceChips.all;
  List<TextMenu> carouselMenus = TrendTextMenus.carouselTextMenus;
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
                    fontSize: size.height * 0.019,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.bold,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: buildChoiceChips(size),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Major News',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.height * 0.019,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.bold,
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
          height: size.height * 0.28,
          padding: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                //height: size.height * 0.25,
                width: size.width * 0.70,
                margin: const EdgeInsets.only(right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.70,
                      height: size.height * 0.20,
                      //margin: const EdgeInsets.only(bottom: 10.0),
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
                      width: 5.0,
                    ),
                    Text(
                      'Climate change: Arctic warming linked to colder winters',
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: size.height * 0.017,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Nature Channel',
                          style: TextStyle(
                            color: kPrimaryLinkColor,
                            fontWeight: FontWeight.w300,
                            fontSize: size.height * 0.014,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 5.0,
                          width: 5.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPlaceholderColor,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '4mins ago',
                          style: TextStyle(
                            color: kPlaceholderColor,
                            fontWeight: FontWeight.w300,
                            fontSize: size.height * 0.014,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20.0,
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
                    fontSize: size.height * 0.019,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.bold,
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

                    // carouselMenus[index].active = true;
                    // carouselMenus = carouselMenus.map((otherMenu) {
                    //   final newMenu =
                    //       otherMenu.copy(active: false, title: otherMenu.title);

                    //   return otherMenu == newMenu
                    //       ? newMenu.copy(active: active, title: otherMenu.title)
                    //       : newMenu;
                    // }).toList();
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Text(
                    carouselMenus[index].title,
                    style: TextStyle(
                      color: carouselMenus[index].active
                          ? kPrimaryTextColor
                          : kPlaceholderColor,
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.018,
                      fontFamily: kDefaultFont,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10.0,
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
                    SizedBox(
                      width: 100.0,
                      height: 100.0,
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
                      width: 20.0,
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
                            "The new Candyman and how horror is reckoning with racism",
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
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color:
                        choiceChip.isSelected ? kWhiteColor : kPrimaryTextColor,
                    fontSize: size.height * 0.017,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7.0),
                    ),
                    side: BorderSide(
                      color: kPrimaryColor,
                      width: 1.0,
                    ),
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
                  backgroundColor: Colors.transparent,
                ))
            .toList(),
      );
}
