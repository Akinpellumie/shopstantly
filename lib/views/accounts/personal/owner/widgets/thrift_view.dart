import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/accounts/personal/components/thrift_card.dart';


class ThriftView extends StatefulWidget {
  const ThriftView({Key? key}) : super(key: key);

  @override
  State<ThriftView> createState() => _ThriftViewState();
}

class _ThriftViewState extends State<ThriftView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Column(children: [

                        const SizedBox(
                          height: 20.0,
                        ),
                        GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 2 / 5.0,
                          crossAxisCount: 2,
                          padding: const EdgeInsets.only(left: 20.0),
                          children: generateNumbers().map((int i) {
                            return ThriftCard(
                              size: size,
                              onTapped: (){},
                              // CustomRouter.nextScreen(
                              //     context, "/"),
                            );
                          }).toList(),
                        ),
                ],),
                childCount: 1),
          ),
        ],
      ),
    );
  }

  List<int> generateNumbers() => List<int>.generate(6, (i) => i + 1);
}