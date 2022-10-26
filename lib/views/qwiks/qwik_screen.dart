import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marquee/marquee.dart';
import 'package:provider/provider.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:video_player/video_player.dart';

import '../../utils/dimensions.dart';
import 'widgets/qwik_action_button.dart';
import 'widgets/qwik_author_widget.dart';
import 'widgets/qwik_comment_widget.dart';

class QwikScreen extends StatefulWidget {
  const QwikScreen({Key? key}) : super(key: key);

  @override
  _QwikScreenState createState() => _QwikScreenState();
}

class _QwikScreenState extends State<QwikScreen> {
  int listOffset = 1;
  int listLimit = 10;
  @override
  void initState() {
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
    //Provider.of<ReelViewModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    // ReelViewModel viewModel = context.watch<ReelViewModel>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: false,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Qwiks (Sales)',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: size.height * 0.0170,
                fontWeight: FontWeight.w400,
                fontFamily: kDefaultFont,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                AssetsPath.giveaway,
                height: size.height * 0.025,
                width: size.height * 0.025,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                AssetsPath.deals,
                height: size.height * 0.025,
                width: size.height * 0.025,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_list,
                    color: kWhiteColor,
                    size: 28.0,
                  ),
                ),
                Text(
                  'Filter',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w400,
                    fontFamily: kDefaultFont,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ],
        ),
        body:
            // viewModel.loading
            //     ? SizedBox(
            //         height: size.height,
            //         width: size.width,
            //         child: BoxShimmer(
            //           height: size.height,
            //         ),
            //       )
            //     :
            PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index) {
            return SizedBox(
              height: size.height,
              width: size.width,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Container(
                  //   color: kLightPurpleColor,
                  // ),
                  Image.asset(
                    AssetsPath.qwikBg,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent
                        ],
                        begin: const Alignment(0, -0.75),
                        end: const Alignment(0, 0.1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.3),
                            Colors.transparent
                          ],
                          begin: const Alignment(0, -0.75),
                          end: const Alignment(0, 0.1),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //buttons
                      QwikActionButton(size: size),

                      //post author
                      QwikAuthorWidget(size: size),

                      //comment section
                      QwikCommentWidget(size: size),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
