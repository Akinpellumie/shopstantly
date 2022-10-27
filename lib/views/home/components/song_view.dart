import 'package:flutter/material.dart';

import '../../../data/audio_filter_menus.dart';
import '../../../data/audio_items.dart';
import '../../../models/common/audio.dart';
import '../../../models/common/text_menu.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class SongView extends StatefulWidget {
  final Size size;
  const SongView({super.key, required this.size});

  @override
  State<SongView> createState() => _SongViewState();
}

class _SongViewState extends State<SongView> {
  List<TextMenu> carouselMenus = AudioFilterMenus.carouselAudioMenus;
  List<Audio> audioItems = AudioItems.audioItems;

  int carouselIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.size.height * 0.17,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: PageView.builder(
            itemCount: albumCovers.length,
            pageSnapping: true,
            onPageChanged: (index) {
              setState(() {
                carouselIndex = index;
              });
            },
            itemBuilder: (context, pagePosition) {
              return SizedBox(
                width: widget.size.width - 40,
                height: widget.size.height * 0.20,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Image.network(
                    albumCovers[pagePosition],
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              albumCovers.length,
              (index) => buildDot(index, context),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 15.0,
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: audioItems.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return SizedBox(
                width: widget.size.width,
                child: Row(
                  children: [
                    Text(
                      '${index + 1}.',
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.normal,
                        fontSize: widget.size.height * 0.017,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: 60.0,
                      height: 60.0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: Image.network(
                          audioItems[index].albumCover,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            audioItems[index].title,
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: widget.size.height * 0.019,
                              fontFamily: kDefaultFont,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            audioItems[index].artist,
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: widget.size.height * 0.017,
                              fontFamily: kDefaultFont,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      color: kPrimaryColor,
                      size: widget.size.height * 0.03,
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.0,
                width: widget.size.width,
              );
            },
          ),
        ),
      ],
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: carouselIndex == index
            ? Theme.of(context).primaryColor
            : kPrimaryAccentColor,
      ),
    );
  }

  List<String> albumCovers = [
    'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/Live-again-album-cover.jpeg?auto=format&q=60&fit=max&w=930',
    'https://www.bellanaija.com/wp-content/uploads/2022/09/302498186_137867355611511_5462784524074138864_n.jpg',
    'https://cdns-images.dzcdn.net/images/cover/ee712ec0084d50159ae6564de833ce12/500x500.jpg',
  ];
}
