import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../helpers/theme_helper.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_router.dart';
import '../../utils/dimensions.dart';

class BlogPostScreen extends StatefulWidget {
  const BlogPostScreen({Key? key}) : super(key: key);

  @override
  State<BlogPostScreen> createState() => _BlogPostScreenState();
}

class _BlogPostScreenState extends State<BlogPostScreen> {
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
          onPressed: () => CustomRouter.previousScreen(context),
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kProfileBannerColor,
                  border: Border.all(color: Colors.white, width: 5.0),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: const Center(
                    child: Icon(
                      CupertinoIcons.cloud_download,
                      color: kPlaceholderColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@kerah_stores',
                    style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0150,
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.w400),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '1,980.893 ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: size.height * 0.0130,
                        fontWeight: FontWeight.normal,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'subcribers',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.normal,
                            fontSize: size.height * 0.0130,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
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
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        AssetsPath.heels,
                        width: double.infinity,
                        height: size.height * 0.30,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Trying to Grow your natural hair? Try our Rice water remedy',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: size.width * 0.050,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.share,
                              color: kPlaceholderColor,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              CupertinoIcons.bookmark,
                              color: kPlaceholderColor,
                              size: 20.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width / 2 - 20,
                              margin: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  const Icon(
                                    CupertinoIcons.eye_fill,
                                    size: 20.0,
                                    color: kPlaceholderColor,
                                  ),
                                  const SizedBox(
                                    width: 7.0,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '125,908  ',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.0130,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'views',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: size.height * 0.0130,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width / 2 - 20,
                              margin: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  const Icon(
                                    CupertinoIcons.heart_fill,
                                    size: 20.0,
                                    color: kPlaceholderColor,
                                  ),
                                  const SizedBox(
                                    width: 7.0,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '47,987 ',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.0130,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'likes',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: size.height * 0.0130,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ],
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
                        Text(
                          'Rice water is of the fastest remedy to grow your hair. I know you’re wondering what i mean by rice water... Yes the same water you pour away when you’re cooking rice. Rice water is very efficient in your naural hair growth journey. All you have to do is seive the water into a bowl and keep it...',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(25.0)),
                child: TextFormField(
                  onChanged: (value) {},
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.top,
                  textCapitalization: TextCapitalization.sentences,
                  style: const TextStyle(
                      color: kWhiteColor,
                      fontFamily: kDefaultFont,
                      fontWeight: FontWeight.w400),
                  decoration: ThemeHelper().chatEntryInputDecoration(
                    'Add Comments',
                    'Type comment...',
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SvgPicture.asset(
                        AssetsPath.send,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SvgPicture.asset(
                        AssetsPath.more,
                      ),
                    ),
                    size.height * 0.0125,
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
