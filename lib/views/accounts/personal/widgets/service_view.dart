import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';


class ServiceView extends StatelessWidget {
  const ServiceView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverAppBar(
            leadingWidth: 0.0,
            elevation: 0.0,
            automaticallyImplyLeading: true,
            pinned: true,
            backgroundColor: kBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              centerTitle: false,
              title: Text(
                'Available Services for you',
                style: TextStyle(
                  fontFamily: kDefaultFont,
                  fontSize: size.height * 0.0180,
                  color: kPrimaryTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                      width: size.width,
                      height: 60.0,
                      margin: const EdgeInsets.only(bottom: 15.0),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              color: kCategoryTabColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.mic_rounded,
                                color: kPrimaryColor,
                                size: 30.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Electrician',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0180,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: const BoxDecoration(
                                        color: kCategoryTabColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          AssetsPath.image1,
                                          width: 15.0,
                                          height: 15.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 7.0,
                                    ),
                                    Text(
                                      'Emmanuel Ostrich',
                                      style: TextStyle(
                                        fontFamily: kDefaultFont,
                                        fontSize: size.height * 0.0150,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0150,
                                color: kWhiteColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                childCount: 5),
          ),
        ],
      ),
    );
  }
}
