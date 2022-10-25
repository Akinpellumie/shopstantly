import '../models/common/text_menu.dart';

class TrendTextMenus {
  static final carouselTextMenus = <TextMenu>[
    TextMenu(title: 'Music', active: true),
    TextMenu(title: 'Arts', active: false),
    TextMenu(title: 'Tech', active: false),
    TextMenu(title: 'Fashion', active: false),
    TextMenu(title: 'Education', active: false),
    TextMenu(title: 'Lifestyle', active: false),
  ];
  static final qwikTextMenus = <TextMenu>[
    TextMenu(title: 'All', active: true),
    TextMenu(title: 'Reviews', active: false),
    TextMenu(title: 'Sales', active: false),
    TextMenu(title: 'Social', active: false),
    TextMenu(title: 'Donation', active: false),
    //TextMenu(title: 'Lifestyle', active: false),
  ];
}
