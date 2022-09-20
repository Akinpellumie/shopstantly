import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

class AlbumWidget extends StatefulWidget {
  const AlbumWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<AlbumWidget> createState() => _AlbumWidgetState();
}

class _AlbumWidgetState extends State<AlbumWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      width: widget.size.width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 3,
          crossAxisSpacing: 20,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    imageUrls[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 5.0,
                  top: 5.0,
                  child: SvgPicture.asset(
                    AssetsPath.slides,
                    color: kWhiteColor,
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<String> imageUrls = [
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
    'https://i2.wp.com/amgvenues.com.ng/wp-content/uploads/2015/05/grandeur.jpg5_.png?fit=640%2C415&ssl=1',
  ];
}
