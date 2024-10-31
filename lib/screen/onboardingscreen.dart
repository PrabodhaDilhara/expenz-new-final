import 'package:expenz_new/constants/colors.dart';
import 'package:expenz_new/data/onboarding_data.dart';
import 'package:expenz_new/screen/onboarding/front_page.dart';
import 'package:expenz_new/screen/onboarding/shared_onboarding.dart';
import 'package:expenz_new/screen/user_data_screen.dart';
import 'package:expenz_new/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  //page controller
  final PageController _controller = PageController();
  bool showdetailsPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                //on boarding screen
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    showdetailsPage = index == 3;
                  },
                  children: [
                    FrontPage(),
                    SharedOnboarding(
                      title: OnboardingData.onboardingDataList[0].title,
                      imagepath: OnboardingData.onboardingDataList[0].imagePath,
                      description:
                          OnboardingData.onboardingDataList[0].description,
                    ),
                    SharedOnboarding(
                      title: OnboardingData.onboardingDataList[1].title,
                      imagepath: OnboardingData.onboardingDataList[1].imagePath,
                      description:
                          OnboardingData.onboardingDataList[1].description,
                    ),
                    SharedOnboarding(
                      title: OnboardingData.onboardingDataList[2].title,
                      imagepath: OnboardingData.onboardingDataList[2].imagePath,
                      description:
                          OnboardingData.onboardingDataList[2].description,
                    ),
                  ],
                ),
                //page dot indicator
                Container(
                  alignment: Alignment(0, 0.75),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const WormEffect(
                      dotColor: kLightGrey,
                      activeDotColor: kMainColors,
                    ),
                  ),
                ),
                //navigation button
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: !showdetailsPage
                        ? GestureDetector(
                            onTap: () {
                              _controller.animateToPage(
                                _controller.page!.toInt() + 1,
                                duration: Duration(microseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: CustomButton(
                              buttonColor: kMainColors,
                              buttonName:
                                  showdetailsPage ? "Get Started" : "Next",
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UserDataScreen(),
                                  ));
                            },
                            child: CustomButton(
                              buttonColor: kMainColors,
                              buttonName:
                                  showdetailsPage ? "Get Started" : "Next",
                            ),
                          ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
