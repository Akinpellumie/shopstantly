class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent(
      {required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Buy and Sell',
      image: 'assets/images/buy.svg',
      description: "Send Parcels and waybill seamlessly at ridiculous prices."),
  UnbordingContent(
      title: 'Payment Protection',
      image: 'assets/images/security.svg',
      description:
          "Enjoy payment protection for all you buy and ship with ease"),
  UnbordingContent(
      title: 'Manage Business',
      image: 'assets/images/business.svg',
      description:
          "Explore features and increase customers satisfaction. Post product, sell in multiple currencies, process orders and monitor state stats in real time."),
  UnbordingContent(
      title: 'Manage Event',
      image: 'assets/images/events.svg',
      description: "All your event management needs in one place."),
  UnbordingContent(
      title: 'Get Income',
      image: 'assets/images/income.svg',
      description:
          "Alternative income for celebrities and News bloggers. Retain traffic to your page and enjoy our powerful marketing  automation."),
];
