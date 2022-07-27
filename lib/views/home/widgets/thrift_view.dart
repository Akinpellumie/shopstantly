import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/custom_router.dart';

import '../components/thrift_card.dart';

class ThriftView extends StatelessWidget {
  const ThriftView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 2 / 5.0,
      crossAxisCount: 2,
      children: generateNumbers().map((int i) {
        return ThriftCard(
          size: size,
          onTapped: () => CustomRouter.nextScreen(context, '/thriftDetail'),
          // onTapped: () => CustomRouter.nextScreen(
          //     context, "/productDetail"),
        );
      }).toList(),
    );
  }

  List<int> generateNumbers() => List<int>.generate(6, (i) => i + 1);
}
