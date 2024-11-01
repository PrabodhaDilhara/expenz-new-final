import 'package:expenz_new/models/onboarding_model.dart';

class OnboardingData {
  static final List<onboarding> onboardingDataList = [
    onboarding(
      title: "Gain total control of your money",
      imagePath: "assets/images/onboard_1.png",
      description: "Become your own money manager and make every cent count",
    ),
    onboarding(
      title: "Know where your money goes",
      imagePath: "assets/images/onboard_3.png",
      description:
          "Track your transaction easily,with categories and financial report ",
    ),
    onboarding(
      title: "Planning ahead",
      imagePath: "assets/images/onboard_2.png",
      description: "Setup your budget for each category so you in control ",
    ),
  ];
}
