class TextMenu {
  final String title;
  bool active;

  TextMenu({
    required this.title,
    this.active = false,
  });
  TextMenu copy({
    required String title,
    required bool active,
  }) =>
      TextMenu(
        title: title,
        active: active,
      );
}
