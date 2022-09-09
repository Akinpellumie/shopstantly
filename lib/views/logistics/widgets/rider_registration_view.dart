import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class RiderRegistrationView extends StatefulWidget {
  const RiderRegistrationView({Key? key}) : super(key: key);

  @override
  State<RiderRegistrationView> createState() => _RiderRegistrationViewState();
}

class _RiderRegistrationViewState extends State<RiderRegistrationView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      controller: ScrollController(
        keepScrollOffset: true,
      ),
      slivers: [
        SliverAppBar(
          leadingWidth: 0.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          pinned: true,
          toolbarHeight: size.height * 0.10,
          backgroundColor: kBackgroundColor,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.all(0.0),
            centerTitle: false,
            title: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Please provide a means of identification',
                      style: TextStyle(
                        fontSize: size.height * 0.020,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, _index) => Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: kPlaceholderColor.withOpacity(0.40)),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            'Select a means of ID',
                            style: TextStyle(
                              fontSize: size.height * 0.0190,
                              fontWeight: FontWeight.w400,
                              fontFamily: kDefaultFont,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: kPrimaryColor,
                          size: size.height * 0.050,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: size.height * 0.20,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: kPlaceholderColor.withOpacity(0.40)),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_photo_alternate_outlined,
                            color: kPlaceholderColor,
                            size: size.height * 0.08,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Take a picture of  your ID card',
                            style: TextStyle(
                              fontSize: size.height * 0.0140,
                              fontWeight: FontWeight.w300,
                              fontFamily: kDefaultFont,
                              color: kPlaceholderColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
