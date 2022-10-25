import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

import '../../../utils/global_utils.dart';

class CustomDoubleGrid extends StatelessWidget {
  const CustomDoubleGrid({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final List<String> imageUrls;
  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: GestureDetector(
            onTap: () => GlobalUtils.previewImage(
              context,
              imageUrls[0],
            ),
            child: Hero(
              tag: 'imageHero stag1',
              child: Container(
                //height: size.height * 0.20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    imageUrl: imageUrls[0],
                    fit: BoxFit.cover,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
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
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: GestureDetector(
            onTap: () => GlobalUtils.previewImage(
              context,
              imageUrls[1],
            ),
            child: Hero(
              tag: 'imageHero stag2',
              child: Container(
                //height: size.height * 0.20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    imageUrl: imageUrls[1],
                    fit: BoxFit.cover,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
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
        ),
      ],
    );
  }
}
