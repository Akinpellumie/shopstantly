import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import '../components/business_card_item.dart';

class BusinessView extends StatefulWidget {
  const BusinessView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BusinessView> createState() => _BusinessViewState();
}

class _BusinessViewState extends State<BusinessView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.095,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width / 5.5 - 20,
                      height: size.height * 0.06,
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: kPlaceholderColor,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'My story',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: size.height * 0.0130,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      width: size.width / 5 - 20,
                      height: size.height * 0.07,
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(13.0),
                          child: Image.asset(
                            AssetsPath.image2,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Lina',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: size.height * 0.0130,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      width: size.width / 5 - 20,
                      height: size.height * 0.07,
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(13.0),
                          child: Image.asset(
                            AssetsPath.image2,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Lina',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: size.height * 0.0130,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      width: size.width / 5 - 20,
                      height: size.height * 0.07,
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(13.0),
                          child: Image.asset(
                            AssetsPath.image2,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Lina',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: size.height * 0.0130,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      width: size.width / 5 - 20,
                      height: size.height * 0.07,
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(13.0),
                          child: Image.asset(
                            AssetsPath.image2,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Lina',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: size.height * 0.0130,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        BusinessCardItem(
          imageCount: 4,
          size: widget.size,
          imageUrls: _image4Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
        BusinessCardItem(
          imageCount: 1,
          size: widget.size,
          imageUrls: _image1Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
        BusinessCardItem(
          imageCount: 2,
          size: widget.size,
          imageUrls: _image2Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
        BusinessCardItem(
          imageCount: 3,
          size: widget.size,
          imageUrls: _image3Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }

  final List<String> _image3Urls = [
    'https://i.pravatar.cc/300?img=1',
    'https://i.pravatar.cc/300?img=3',
    'https://i.pravatar.cc/300?img=7'
  ];

  final List<String> _image4Urls = [
    'https://i.pravatar.cc/300?img=2',
    'https://i.pravatar.cc/300?img=5',
    'https://i.pravatar.cc/300?img=9',
    'https://i.pravatar.cc/300?img=8'
  ];

  final List<String> _image2Urls = [
    'https://i.pravatar.cc/300?img=9',
    'https://i.pravatar.cc/300?img=8'
  ];

  final List<String> _image1Urls = ['https://i.pravatar.cc/300?img=4'];
}
