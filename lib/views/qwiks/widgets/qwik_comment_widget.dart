import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class QwikCommentWidget extends StatelessWidget {
  const QwikCommentWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 8,
          child: Container(
            margin: const EdgeInsets.only(left: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: TextFormField(
              onChanged: (value) {},
              maxLines: null,
              textAlignVertical: TextAlignVertical.bottom,
              //maxLength: 100,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(
                color: kPrimaryTextColor,
                fontFamily: kDefaultFont,
                fontSize: size.height * 0.0200,
                fontWeight: FontWeight.normal,
              ),
              decoration: const InputDecoration(
                hintText: "Add comment...",
                hintStyle: TextStyle(
                  color: kPrimaryTextColor,
                ),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.text,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                AssetsPath.giveaway,
                height: size.height * 0.025,
                width: size.height * 0.025,
              ),
              Image.asset(
                AssetsPath.deals,
                height: size.height * 0.025,
                width: size.height * 0.025,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
