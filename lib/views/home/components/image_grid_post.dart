import 'package:flutter/material.dart';

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
                child: Image.network(
                  imageUrls[0],
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    // Appropriate logging or analytics, e.g.
                    // myAnalytics.recordError(
                    //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
                    //   exception,
                    //   stackTrace,
                    // );
                    return const Icon(Icons.image_not_supported);
                  },
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
                child: Image.network(
                  imageUrls[1],
                  fit: BoxFit.cover,
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
                child: Image.network(
                  imageUrls[2],
                  fit: BoxFit.cover,
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
