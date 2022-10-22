import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class QwikSaleCard extends StatefulWidget {
  const QwikSaleCard({
    Key? key,
    required this.size,
    required List<String> imageUrls,
  })  : _imageUrls = imageUrls,
        super(key: key);

  final Size size;
  final List<String> _imageUrls;

  @override
  State<QwikSaleCard> createState() => _QwikSaleCardState();
}

class _QwikSaleCardState extends State<QwikSaleCard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.size.height * 0.45,
          width: widget.size.width,
          child: Swiper(
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.8,
            loop: true,
            itemHeight: widget.size.height * 0.45,
            layout: SwiperLayout.STACK,
            itemWidth: widget.size.width - 100,
            itemBuilder: (context, index) {
              final image = widget._imageUrls[index];
              return Image.network(
                image,
                fit: BoxFit.fitHeight,
              );
            },
            indicatorLayout: PageIndicatorLayout.SCALE,
            autoplay: false,
            itemCount: widget._imageUrls.length,
            onIndexChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget._imageUrls.length,
              (index) => buildDot(index, context),
            ),
          ),
        ),
      ],
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      margin: const EdgeInsets.only(right: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : kPrimaryAccentColor,
      ),
    );
  }
}
