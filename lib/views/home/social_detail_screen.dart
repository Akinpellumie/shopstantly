import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class SocialDetailScreen extends StatefulWidget {
  const SocialDetailScreen({Key? key}) : super(key: key);

  @override
  State<SocialDetailScreen> createState() => _SocialDetailScreenState();
}

class _SocialDetailScreenState extends State<SocialDetailScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    color: kPrimaryColor,
                    size: size.height * 0.0300,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://randomuser.me/api/portraits/men/5.jpg"),
                      maxRadius: 20,
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 15.0,
                        width: 15.0,
                        //padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.check,
                            color: kWhiteColor,
                            size: 10.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kerah Stores",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.height * 0.0180,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "1.98m subcribers",
                        style: TextStyle(
                          color: kTimeTextColor,
                          fontSize: size.height * 0.0150,
                        ),
                      ),
                    ],
                  ),
                ),
                // const Icon(
                //   CupertinoIcons.phone_fill,
                //   color: kPrimaryColor,
                // ),
                // const SizedBox(
                //   width: 5.0,
                // ),
                // const Icon(
                //   CupertinoIcons.ellipsis_vertical,
                //   color: kPrimaryColor,
                // ),
              ],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.50,
                      width: size.width,
                      child: Swiper(
                        scrollDirection: Axis.horizontal,
                        viewportFraction: 0.8,
                        loop: true,
                        itemHeight: size.height * 0.45,
                        layout: SwiperLayout.STACK,
                        itemWidth: size.width - 100,
                        itemBuilder: (context, index) {
                          final image = _imageUrls[index];
                          return Image.network(
                            image,
                            fit: BoxFit.fitHeight,
                          );
                        },
                        indicatorLayout: PageIndicatorLayout.SCALE,
                        autoplay: false,
                        itemCount: _imageUrls.length,
                        onIndexChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _imageUrls.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'My First visit to TOKYO was all fun. I have become the Lady I dreamt of.',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0180,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      width: size.width,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.eye_fill,
                                color: kPlaceholderColor,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '125,908 views',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.0120,
                                  fontWeight: FontWeight.normal,
                                  color: kPlaceholderColor.withOpacity(0.75),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.heart_fill,
                                color: kPlaceholderColor,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '47,987 likes',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.0120,
                                  fontWeight: FontWeight.normal,
                                  color: kPlaceholderColor.withOpacity(0.75),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Rice water is of the fastest remedy to grow your hair. I know you’re wondering what i mean by rice water... Yes the same water you pour away when you’re cooking rice.',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0160,
                        fontWeight: FontWeight.normal,
                        color: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    AppButton(
                      text: "Proceed To Buy",
                      type: ButtonType.primary,
                      onPressed: () => {},
                    ),
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

  final List<String> _imageUrls = [
    'https://i.pravatar.cc/300?img=2',
    'https://i.pravatar.cc/300?img=5',
    'https://i.pravatar.cc/300?img=4',
    'https://i.pravatar.cc/300?img=1'
  ];
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : kPrimaryAccentColor,
      ),
    );
  }
}
