import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class BuildImage extends StatelessWidget {
  final String imageUrl;
  final int index;
  const BuildImage({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: SizedBox(
              height: 40.0,
              width: 40.0,
              child: CircularProgressIndicator(
                color: kPrimaryColor,
                value: downloadProgress.progress,
              ),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            padding: const EdgeInsets.all(5.0),
            child: const Icon(
              Icons.image_not_supported_outlined,
              color: kIconBgColor,
              size: 80.0,
            ),
          ),
        ),
        //       Image(
        //   image: CachedNetworkImageProvider(
        //     imageUrl,
        //   ),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
