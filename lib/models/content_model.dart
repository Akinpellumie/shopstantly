class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent(
      {required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'A Socio-Commerce App',
      image: 'assets/images/interact.svg',
      description:
          "Your social media account, business and contents all in one place, amazing!"),
  UnbordingContent(
      title: 'Make Income',
      image: 'assets/images/buy.svg',
      description:
          "Post quality contents, build followers and get your account monetized automatically."),
  UnbordingContent(
      title: 'Payment Protection',
      image: 'assets/images/security.svg',
      description:
          "Buyer pays and money is protected by us until delivery and buyer is satisfied. Incase of dispute, our resolution method is perfect. We protect both the buyer and seller equally."),
  UnbordingContent(
      title: 'Decentralized Logistics',
      image: 'assets/images/logistic.svg',
      description:
          "A model of logistics services that guarantees consistent availability of dispatch and swiftness delivery to meet consumers' wish"),
  UnbordingContent(
      title: 'Create And Manage Event',
      image: 'assets/images/events.svg',
      description:
          "All your event management needs in one place. Users can create, join  and sell tickets on the platform."),
  // UnbordingContent(
  //     title: 'Enjoy Multiple Income',
  //     image: 'assets/images/income.svg',
  //     description:
  //         "Alterntive income for celebrities and news bloggers. Retai traffic to your page and enjoy our powerful marketing automation."),
];
