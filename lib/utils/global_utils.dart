import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

class GlobalUtils {
  static List<int> generateNumbers(int count) =>
      List<int>.generate(count, (i) => i + 1);

  static void previewImage(BuildContext context, String imageUrl) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: true,
        barrierDismissible: false,
        pageBuilder: (BuildContext context, _, __) {
          return Scaffold(
            backgroundColor: kWhiteColor.withOpacity(0.30),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.cancel_sharp)),
                  ),
                  Expanded(
                    child: InteractiveViewer(
                      scaleEnabled: true,
                      panEnabled: true,
                      child: Hero(
                        tag: imageUrl,
                        child: CachedNetworkImage(
                          fit: BoxFit.contain,
                          fadeInDuration: const Duration(milliseconds: 1500),
                          imageUrl: imageUrl,
                          placeholder: (context, url) =>
                              const CupertinoActivityIndicator(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
