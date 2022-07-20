import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../../utils/app_colors.dart';

class CommentWidget extends StatefulWidget {
  final Size size;
  final String imagePath;
  final String name;
  final String date;
  final String desc;
  const CommentWidget({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.date,
    required this.desc,
    required this.name,
  }) : super(key: key);

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  late double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kProfileBannerColor,
                    border: Border.all(color: Colors.white, width: 1.0),
                  ),
                  child: ClipOval(
                    child: Image.asset(widget.imagePath),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: widget.size.height * 0.0150,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      RatingBar(
                          initialRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: widget.size.height * 0.0225,
                          ratingWidget: RatingWidget(
                            full: SvgPicture.asset(
                              AssetsPath.starFillIcon,
                              color: kOrangeColor,
                            ),
                            half: SvgPicture.asset(
                              AssetsPath.starHalfIcon,
                              color: kOrangeColor,
                            ),
                            empty: SvgPicture.asset(
                              AssetsPath.starOutlineIcon,
                              color: kOrangeColor,
                            ),
                          ),
                          onRatingUpdate: (value) {
                            setState(() {
                              _ratingValue = value;
                            });
                          }),
                    ],
                  ),
                ),
                Text(
                  widget.date,
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: widget.size.height * 0.0150,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.desc,
              style: TextStyle(
                color: kPrimaryTextColor,
                fontSize: widget.size.height * 0.0150,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
