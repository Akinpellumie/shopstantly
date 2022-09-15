class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent(
      {required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Interact with Users',
      image: 'assets/images/interact.svg',
      description:
          "Explore our social features, conceptualize your posts around trends relevant to your audience to gain more credibility."),
  UnbordingContent(
      title: 'Buy and Sell',
      image: 'assets/images/buy.svg',
      description:
          "Service providers get the most affordable way to sell physical and digital products online without much hassle on marketing, increased sales, and speedy order fulfillment."),
  UnbordingContent(
      title: 'Payment Protection',
      image: 'assets/images/security.svg',
      description:
          "Consumers get what they want and how they want without the fear of payment scams or logistics problems."),
  UnbordingContent(
      title: 'Decentralized Logistics',
      image: 'assets/images/logistic.svg',
      description:
          "Explore features and increase customers satisfaction. Post product, sell in multiple currencies, process orders and monitor state stats in real time."),
  UnbordingContent(
      title: 'Create And Manage Event',
      image: 'assets/images/events.svg',
      description:
          "All your event management needs in one place.  Users can create, join  and sell tickets on the platform."),
  UnbordingContent(
      title: 'Enjoy Multiple Income',
      image: 'assets/images/income.svg',
      description:
          "Alterntive income for celebrities and news bloggers. Retai traffic to your page and enjoy our powerful marketing automation."),
];
