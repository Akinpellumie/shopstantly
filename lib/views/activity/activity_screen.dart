import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                          color: kSubTextColor,
                          fontSize: size.height * 0.025,
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.more_vert_outlined,
                    color: kDarkColor,
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Image.asset(
                        AssetsPath.emptyActivity,
                        height: size.height * 0.50,
                        width: size.width / 2,
                      ),
                    ),
                    Text(
                      'No Notifications!',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.025,
                      ),
                    ),
                    Text(
                      'Oops! You do not have any notification at the moment ',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.025,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
