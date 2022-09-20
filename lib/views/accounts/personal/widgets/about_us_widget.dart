import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';
import '../../components/member_widget.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ExpandableText(
            "My name is Dotun Felixx, and I'm currently looking for a job in youth services. I have 10 years of experience working with youth agencies. I have a bachelor's degree in outdoor education. I raise money, train leaders, and organize units. I have raised over N100,000 each of the last six years. I consider myself a good public speaker, and I have a good sense of humor. “Who do you know who works with youth?",
            style: TextStyle(
              color: kPrimaryTextColor,
              fontSize: size.height * 0.018,
              fontWeight: FontWeight.normal,
              fontFamily: kDefaultFont,
            ),
            expandText: 'Read More',
            collapseText: 'Read Less',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 3,
            linkColor: kPrimaryLinkColor,
          ),
          const SizedBox(
            height: 10.0,
          ),
          MemberWidget(size: size),
        ],
      ),
    );
  }
}
