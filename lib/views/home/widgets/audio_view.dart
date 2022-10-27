import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/home/components/album_view.dart';
import 'package:shopstantly_app/views/home/components/song_view.dart';

import '../../../data/audio_filter_menus.dart';
import '../../../data/audio_items.dart';
import '../../../models/common/audio.dart';
import '../../../models/common/text_menu.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class AudioView extends StatefulWidget {
  final Size size;
  const AudioView({Key? key, required this.size}) : super(key: key);

  @override
  State<AudioView> createState() => _AudioViewState();
}

class _AudioViewState extends State<AudioView> {
  String albumCover =
      'https://www.bellanaija.com/wp-content/uploads/2022/09/302498186_137867355611511_5462784524074138864_n.jpg';

  List<TextMenu> carouselMenus = AudioFilterMenus.carouselAudioMenus;
  List<Audio> audioItems = AudioItems.audioItems;

  int carouselIndex = 0;
  String activeMenu = 'Songs';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          margin: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 9,
                child: Container(
                  //margin: const EdgeInsets.only(bo: 20.0),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: kPlaceholderColor.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(27.5),
                  ),
                  child: Center(
                    child: TextFormField(
                      onChanged: (value) {},
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.center,
                      //maxLength: 100,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.019,
                        fontWeight: FontWeight.normal,
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPlaceholderColor.withOpacity(0.65),
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list,
                    color: kPlaceholderColor,
                    size: size.height * 0.035,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 25.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: carouselMenus.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    //carouselMenus[index].active = true;
                    carouselIndex = index;
                    activeMenu = carouselMenus[index].title;
                    for (int i = 0; i < carouselMenus.length; i++) {
                      index == i
                          ? carouselMenus[i].active = true
                          : carouselMenus[i].active = false;
                    }
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 2.0),
                  decoration: BoxDecoration(
                      color: carouselMenus[index].active
                          ? kPrimaryColor
                          : kIconBgColor,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      carouselMenus[index].title,
                      style: TextStyle(
                        color: carouselMenus[index].active
                            ? kWhiteColor
                            : kTabTextColor,
                        fontWeight: FontWeight.normal,
                        fontSize: size.height * 0.016,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        activeMenu == "Albums" || carouselIndex == 1
            ? AlbumView(size: size)
            : SongView(size: size),
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
