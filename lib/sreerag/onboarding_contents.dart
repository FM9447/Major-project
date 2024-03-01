class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Bringing joy to pets, one app at a time.",
    image: "assets/images/image1.png",
    desc: "",
  ),
  OnboardingContents(
    title: "Connecting pets with the care they deserve.",
    image: "assets/images/image2.png",
    desc: "",
  ),
  OnboardingContents(
    title: "Tailored care for your best friend, right at your fingertips.",
    image: "assets/images/image3.png",
    desc: "",
  ),
];
