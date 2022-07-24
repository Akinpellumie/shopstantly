
class BarItem {
  /// Selected or active icon must be filled icon and complementary to inactive icon.
  final String filledIcon;

  /// Normal or inactive icon must be outlined icon and complementary to active icon.
  final String outlinedIcon;
  final String title;
  BarItem({
    required this.filledIcon,
    required this.outlinedIcon,
    required this.title,
  });
}
