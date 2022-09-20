import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/dimensions.dart';

class VideoView extends StatefulWidget {
  final Size size;
  const VideoView({Key? key, required this.size}) : super(key: key);

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Top Videos',
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
                  'Most Watched',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.30,
                      height: 100.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 5.0,
                            right: 10.0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                                vertical: 3.0,
                              ),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                "6:30",
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: size.height * 0.017,
                                  fontFamily: kDefaultFont,
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
                          const SizedBox(
                            height: 10.0,
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
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  CupertinoIcons.heart,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () => CustomRouter.nextScreen(
                                    context, '/commentScreen'),
                                child: Icon(
                                  CupertinoIcons.chat_bubble,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () => {},
                                child: Icon(
                                  Icons.share_outlined,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () => {},
                                child: Icon(
                                  CupertinoIcons.bookmark,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
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
}
