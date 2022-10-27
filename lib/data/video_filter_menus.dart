import '../models/common/text_menu.dart';

class VideoFilterMenus {
  static final carouselVideoMenus = <TextMenu>[
    TextMenu(title: 'All', active: true),
    TextMenu(title: 'Music', active: false),
    TextMenu(title: 'Videos', active: false),
    TextMenu(title: 'Movies', active: false),
    TextMenu(title: 'Most Streamed', active: false),
    TextMenu(title: 'Education', active: false),
    TextMenu(title: 'Lifestyle', active: false),
  ];
  
  static final ssTvMenus = <TextMenu>[
    TextMenu(title: 'Music', active: true),
    TextMenu(title: 'Movies', active: false),
    TextMenu(title: 'Arts', active: false),
    TextMenu(title: 'Tech', active: false),
    TextMenu(title: 'Fashion', active: false),
    TextMenu(title: 'Education', active: false),
    TextMenu(title: 'Lifestyle', active: false),
  ];
  
}
