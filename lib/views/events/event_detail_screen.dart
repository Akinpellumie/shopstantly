import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';
import '../../utils/dimensions.dart';

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
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
            'Event Detail',
            style: TextStyle(
                fontFamily: kDefaultFont,
                fontSize: kNormalText,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            // IconButton(
            //   onPressed: () {},
            //   icon: SvgPicture.asset(
            //     AssetsPath.searchIcon,
            //     color: kLightGrayColor,
            //     width: 25.0,
            //     height: 25.0,
            //   ),
            // ),
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
            children: [
              Flexible(
                child: CustomScrollView(
                  controller: ScrollController(
                    keepScrollOffset: true,
                  ),
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                          (context, _index) => Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10.0,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          AssetsPath.flyer,
                                          height: 300.0,
                                          width: double.infinity,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.007,
                                    ),
                                    Text(
                                      'Your customized Flyer',
                                      style: TextStyle(
                                          fontFamily: kDefaultFont,
                                          fontSize: size.height * 0.0180,
                                          color: kPrimaryTextColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                          fontFamily: kDefaultFont,
                                          fontSize: size.height * 0.0150,
                                          color: kPrimaryTextColor,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 30.0, vertical: 10.0),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 5.0),
                                        decoration: BoxDecoration(
                                          color: kWhiteColor,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 20,
                                              offset: const Offset(0, 13),
                                              color: kPrimaryColor
                                                  .withOpacity(0.20),
                                            ),
                                          ],
                                          //border: Border.all(color: kCardBorderColor, width: 2.0),
                                        ),
                                        child: Row(
                                          children: [
                                            Flexible(
                                              child: Row(
                                                children: [
                                                  FacePile(
                                                    radius: 20,
                                                    space: 30,
                                                    images: const [
                                                      NetworkImage(
                                                          "https://i.pravatar.cc/300?img=1"),
                                                      NetworkImage(
                                                          "https://i.pravatar.cc/300?img=2"),
                                                      NetworkImage(
                                                          "https://i.pravatar.cc/300?img=3"),
                                                    ],
                                                    border: Border.all(
                                                        color: kWhiteColor,
                                                        width: 2),
                                                  ),
                                                  const SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      '+20 Going',
                                                      style: TextStyle(
                                                        color: kPrimaryColor,
                                                        fontFamily:
                                                            kDefaultFont,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize:
                                                            size.width * 0.030,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  CupertinoIcons.heart_fill,
                                                  color: kOrangeColor,
                                                  size: size.height * 0.0252,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),
                                                Icon(
                                                  Icons.share,
                                                  color: kOrangeColor,
                                                  size: size.height * 0.0252,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'International Band Music Concert',
                                              style: TextStyle(
                                                  fontFamily: kDefaultFont,
                                                  fontSize:
                                                      size.height * 0.0250,
                                                  color: kPrimaryColor,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.calendar_month_outlined,
                                                color: kPrimaryColor,
                                              ),
                                              const SizedBox(
                                                width: 7.0,
                                              ),
                                              Text(
                                                'Mon, Apr 18 · 21:00 Pm',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontFamily: kDefaultFont,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      size.height * 0.0180,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 20.0),
                                      decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 20,
                                            offset: const Offset(0, 13),
                                            color:
                                                kPrimaryColor.withOpacity(0.20),
                                          ),
                                        ],
                                        //border: Border.all(color: kCardBorderColor, width: 2.0),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: size.width / 2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Price',
                                                  style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontFamily: kDefaultFont,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        size.height * 0.0180,
                                                  ),
                                                ),
                                                Text(
                                                  '#15,000 · #35,000',
                                                  style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontFamily: kDefaultFont,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize:
                                                        size.height * 0.0150,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width / 2 - 20,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 10.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color: kPrimaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Buy Ticket',
                                                  style: TextStyle(
                                                    color: kWhiteColor,
                                                    fontFamily: kDefaultFont,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.0180,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: size.width / 2,
                                          child: Center(
                                            child: Text(
                                              'View on Maps',
                                              style: TextStyle(
                                                color: kBlueColor,
                                                fontFamily: kDefaultFont,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.height * 0.0180,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width / 2,
                                          child: Center(
                                            child: Text(
                                              'Logistic Plans',
                                              style: TextStyle(
                                                color: kBlueColor,
                                                fontFamily: kDefaultFont,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.height * 0.0180,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 10.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            CupertinoIcons.money_dollar,
                                            color: kPrimaryColor,
                                            size: size.height * 0.0250,
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Refund  Policy',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontFamily: kDefaultFont,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      size.height * 0.0180,
                                                ),
                                              ),
                                              Text(
                                                'Flut fee is non-refundable',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontFamily: kDefaultFont,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize:
                                                      size.height * 0.0150,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'About',
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontFamily: kDefaultFont,
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.height * 0.0180,
                                            ),
                                          ),
                                          Text(
                                            "Explore and promote the power of diasporas as a connecting force between cities, regions and continents, between cultures, companies and people. The EurAfrican Forum is an action-oriented platform that aims to foster stronger collaboration between Europe and Africa, better promote a shared green and inclusive growth, uncover new business and social impact investment opportunities & create synergies between both innovation models. Innovators, opinion-formers, game-changers, pioneers, dreamers and mavericks who are shaping the Africa of today gather each year constituting the 'EurAfrican Community Network'.",
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontFamily: kDefaultFont,
                                              fontWeight: FontWeight.normal,
                                              fontSize: size.height * 0.0150,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 4,
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            'Event By',
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontFamily: kDefaultFont,
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.height * 0.0180,
                                            ),
                                          ),
                                          ClipRect(
                                            clipBehavior: Clip.hardEdge,
                                            child: Row(
                                              children: [
                                                Flexible(
                                                  flex: 2,
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 50.0,
                                                        width: 50.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color:
                                                              kProfileBannerColor,
                                                        ),
                                                        child: ClipOval(
                                                          child: Image.asset(
                                                              AssetsPath
                                                                  .imageDp),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10.0,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Emmanuel Ogunbiyi',
                                                            style: TextStyle(
                                                              color:
                                                                  kPrimaryColor,
                                                              fontFamily:
                                                                  kDefaultFont,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize:
                                                                  size.height *
                                                                      0.0180,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Posted on 30, Jan, 2021',
                                                            style: TextStyle(
                                                              color:
                                                                  kPlaceholderColor,
                                                              fontFamily:
                                                                  kDefaultFont,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize:
                                                                  size.height *
                                                                      0.0150,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 1,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: kOrangeColor,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                          CupertinoIcons.phone,
                                                          color: kWhiteColor,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10.0,
                                                      ),
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: kOrangeColor,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                          Icons.mail_outline,
                                                          color: kWhiteColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Partners',
                                                style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontFamily: kDefaultFont,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      size.height * 0.0180,
                                                ),
                                              ),
                                              FacePile(
                                                radius: 20,
                                                space: size.width * 0.13,
                                                images: const [
                                                  NetworkImage(
                                                      "https://financialit.net/sites/default/files/360_197_1.png"),
                                                  NetworkImage(
                                                      "https://thumbs.dreamstime.com/b/web-183282388.jpg"),
                                                  NetworkImage(
                                                      "https://photos5.appleinsider.com/gallery/47670-93100-000-lead-Apple-Logo-xl.jpg"),
                                                  NetworkImage(
                                                      "https://i.pravatar.cc/300?img=4"),
                                                ],
                                                backgroundColor:
                                                    kBackgroundColor,
                                                childBackgroundColor:
                                                    kPrimaryColor,
                                                child: Center(
                                                  child: Text(
                                                    "5+",
                                                    style: TextStyle(
                                                      color: kWhiteColor,
                                                      fontFamily: kDefaultFont,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          size.height * 0.0180,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          childCount: 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
