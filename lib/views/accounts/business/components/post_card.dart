import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';


class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.size,
    required this.currentIndex,
  }) : super(key: key);

  final Size size;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    currentIndex.isEven ? AssetsPath.image1 : AssetsPath.image2,
                    height: 130.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      'How to Write your first UX Case Study like a pro ',
                      softWrap: true,
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            '30K views',
                            softWrap: true,
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontSize: size.width * 0.025,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            height: 8.0,
                            width: 8.0,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPlaceholderColor),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '3 days ago',
                            softWrap: true,
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontSize: size.width * 0.025,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          CupertinoIcons.heart,
                          color: kPlaceholderColor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          CupertinoIcons.chat_bubble,
                          color: kPlaceholderColor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.share,
                          color: kPlaceholderColor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          CupertinoIcons.bookmark,
                          color: kPlaceholderColor,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
