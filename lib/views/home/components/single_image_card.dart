import 'package:flutter/material.dart';

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
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
