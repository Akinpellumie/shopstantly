import 'package:flutter/material.dart';

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
        child: Image(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
