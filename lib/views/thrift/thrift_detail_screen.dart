import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/views/accounts/shoppers/components/circle_button.dart';

import '../../utils/dimensions.dart';

class ThriftDetailScreen extends StatefulWidget {
  const ThriftDetailScreen({Key? key}) : super(key: key);

  @override
  State<ThriftDetailScreen> createState() => _ThriftDetailScreenState();
}

class _ThriftDetailScreenState extends State<ThriftDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                SizedBox(
                  width: size.width,
                  height: size.height * 0.40,
                  child: Image.network(
                    AssetsPath.sneakerPhoto,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    children: [
                      CircleButton(
                        iconData: Icons.keyboard_arrow_left,
                        pressed: () {
                          Navigator.pop(context);
                        },
                        bgColor: kBackgroundColor,
                        iconColor: kPrimaryColor,
                      ),
                      const Spacer(),
                      CircleButton(
                        iconData: CupertinoIcons.heart,
                        pressed: () {},
                        bgColor: kBackgroundColor,
                        iconColor: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //const SizedBox(height: 20.0,),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Nike Sneakers',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0180,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        color: kYellowLightColor,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AssetsPath.starFillIcon,
                              color: kYellowColor,
                              width: size.height * 0.0180,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0180,
                                fontWeight: FontWeight.bold,
                                color: kYellowColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          "This as a good brown leather boot is 6 month old and its still in a good condition. This as a good brown leather boot is 6 month old and its still in a good condition. ",
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0160,
                        fontWeight: FontWeight.normal,
                        color: kPrimaryColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                              color: kOrangeColor,
                              fontWeight: FontWeight.w500,
                              fontSize: size.height * 0.0160,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          AssetsPath.sneakerPhoto,
                          height: size.height * 0.10,
                          width: size.height * 0.100,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          AssetsPath.sneakerPhoto,
                          height: size.height * 0.10,
                          width: size.height * 0.100,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          AssetsPath.sneakerPhoto,
                          height: size.height * 0.10,
                          width: size.height * 0.100,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Color',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: size.height * 0.0180,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            //padding: const EdgeInsets.all(5.0),
                            height: size.height * 0.0300,
                            decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor),
                              shape: BoxShape.circle,
                              //color: kPrimaryColor,
                            ),
                            child: ClipOval(
                              clipBehavior: Clip.hardEdge,
                              child: Icon(
                                Icons.circle,
                                color: kPrimaryColor,
                                size: size.height * 0.0250,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            //padding: const EdgeInsets.all(5.0),
                            height: size.height * 0.0300,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.circle,
                              //color: kPrimaryColor,
                            ),
                            child: ClipOval(
                              clipBehavior: Clip.hardEdge,
                              child: Icon(
                                Icons.circle,
                                color: kBlueColor,
                                size: size.height * 0.0250,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            //padding: const EdgeInsets.all(5.0),
                            height: size.height * 0.0300,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.circle,
                              //color: kPrimaryColor,
                            ),
                            child: ClipOval(
                              clipBehavior: Clip.hardEdge,
                              child: Icon(
                                Icons.circle,
                                color: kYellowColor,
                                size: size.height * 0.0250,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            //padding: const EdgeInsets.all(5.0),
                            height: size.height * 0.0300,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.circle,
                              //color: kPrimaryColor,
                            ),
                            child: ClipOval(
                              clipBehavior: Clip.hardEdge,
                              child: Icon(
                                Icons.circle,
                                color: kOrangeColor,
                                size: size.height * 0.0250,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 8.0,
                        ),
                        decoration: BoxDecoration(
                          color: kGrayColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: kWhiteColor,
                                shape: BoxShape.circle,
                                //color: kPrimaryColor,
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: kPrimaryColor,
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: size.height * 0.0190,
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: kWhiteColor,
                                shape: BoxShape.circle,
                                //color: kPrimaryColor,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: kPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AppButton(
                    text: "Add To Cart | N4,450",
                    type: ButtonType.primary,
                    onPressed: () {
                      //CustomRouter.nextScreen(context, "/mainPage");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
