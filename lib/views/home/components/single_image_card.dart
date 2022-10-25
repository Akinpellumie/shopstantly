import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/global_utils.dart';

class SingleImageCard extends StatelessWidget {
  final String imageUrl;
  final Size size;
  const SingleImageCard({
    Key? key,
    required this.imageUrl,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalUtils.previewImage(
        context,
        imageUrl,
      ),
      child: Hero(
        tag: 'imageHero stag0',
        child: Container(
          height: size.height * 0.40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
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
            //  Image.network(
            //   imageUrl,
            //   fit: BoxFit.cover,
            //   loadingBuilder: (BuildContext context, Widget child,
            //       ImageChunkEvent? loadingProgress) {
            //     if (loadingProgress == null) {
            //       return child;
            //     }
            //     return Center(
            //       child: CircularProgressIndicator(
            //         value: loadingProgress.expectedTotalBytes != null
            //             ? loadingProgress.cumulativeBytesLoaded /
            //                 loadingProgress.expectedTotalBytes!
            //             : null,
            //       ),
            //     );
            //   },
            //   errorBuilder: (BuildContext context, Object exception,
            //       StackTrace? stackTrace) {
            //     // Appropriate logging or analytics, e.g.
            //     // myAnalytics.recordError(
            //     //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
            //     //   exception,
            //     //   stackTrace,
            //     // );
            //     return const Icon(Icons.image_not_supported);
            //   },
            // ),
          ),
        ),
      ),
    );
  }
}
