import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/global_utils.dart';

class ImageGridPost extends StatelessWidget {
  const ImageGridPost({
    Key? key,
    required this.size,
    required this.imageUrls,
  }) : super(key: key);

  final Size size;
  final List<String> imageUrls;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 2,
      //padding: const EdgeInsets.only(left: 20.0),
      children: <Widget>[
        GestureDetector(
          onTap: () => GlobalUtils.previewImage(
            context,
            imageUrls[0],
          ),
          child: Hero(
            tag: 'imageHero stag6',
            child: Container(
              height: size.height * 0.20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrls[0],
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
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => GlobalUtils.previewImage(
            context,
            imageUrls[1],
          ),
          child: Hero(
            tag: 'imageHero stag7',
            child: Container(
              height: size.height * 0.20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrls[1],
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
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => GlobalUtils.previewImage(
            context,
            imageUrls[2],
          ),
          child: Hero(
            tag: 'imageHero stag8',
            child: Container(
              height: size.height * 0.20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrls[2],
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
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => GlobalUtils.previewImage(
            context,
            imageUrls[3],
          ),
          child: Hero(
            tag: 'imageHero stag9',
            child: Container(
              height: size.height * 0.20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  imageUrls[3],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
