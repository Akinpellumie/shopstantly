import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class AlbumView extends StatefulWidget {
  final Size size;
  const AlbumView({super.key, required this.size});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Top Albums',
            style: TextStyle(
              color: kPrimaryTextColor,
              fontSize: widget.size.height * 0.018,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          height: widget.size.height * 0.25,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: albumCovers.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 5.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: widget.size.width / 4,
                      height: widget.size.height * 0.20,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: Image.network(
                          albumCovers[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Urgent siege",
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: widget.size.height * 0.018,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                    Text(
                      "Damned Anthem",
                      style: TextStyle(
                        color: kPrimaryTextColor.withOpacity(0.55),
                        fontWeight: FontWeight.w400,
                        fontSize: widget.size.height * 0.015,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Albums',
            style: TextStyle(
              color: kPrimaryTextColor,
              fontSize: widget.size.height * 0.018,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          height: widget.size.height * 0.25,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: albumCovers.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 5.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: widget.size.width / 4,
                      height: widget.size.height * 0.20,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: Image.network(
                          albumCovers[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Urgent siege",
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: widget.size.height * 0.018,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                    Text(
                      "Damned Anthem",
                      style: TextStyle(
                        color: kPrimaryTextColor.withOpacity(0.55),
                        fontWeight: FontWeight.w400,
                        fontSize: widget.size.height * 0.015,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
  List<String> albumCovers = [
    'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/Live-again-album-cover.jpeg?auto=format&q=60&fit=max&w=930',
    'https://www.bellanaija.com/wp-content/uploads/2022/09/302498186_137867355611511_5462784524074138864_n.jpg',
    'https://cdns-images.dzcdn.net/images/cover/ee712ec0084d50159ae6564de833ce12/500x500.jpg',
    'https://www.bellanaija.com/wp-content/uploads/2022/09/302498186_137867355611511_5462784524074138864_n.jpg',
    'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/Live-again-album-cover.jpeg?auto=format&q=60&fit=max&w=930',
    'https://cdns-images.dzcdn.net/images/cover/ee712ec0084d50159ae6564de833ce12/500x500.jpg',
    'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/Live-again-album-cover.jpeg?auto=format&q=60&fit=max&w=930',
  ];
}
