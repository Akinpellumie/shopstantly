import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
                  child: Image.network(
                    imageUrls[0],
                    fit: BoxFit.cover,
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
                  child: Image.network(
                    imageUrls[1],
                    fit: BoxFit.cover,
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
