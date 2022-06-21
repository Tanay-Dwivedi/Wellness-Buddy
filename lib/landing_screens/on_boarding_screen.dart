import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wellness_buddy/landing_screens/obs_four.dart';
import 'package:wellness_buddy/landing_screens/obs_one.dart';
import 'package:wellness_buddy/landing_screens/obs_three.dart';
import 'package:wellness_buddy/landing_screens/obs_two.dart';
import 'package:wellness_buddy/user_authenticating_screens/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pages = [
    const IntroScreenOne(),
    const IntroScreenTwo(),
    const IntroScreenThree(),
    const IntroScreenFour(),
  ];

  final PageController _controller = PageController();

  bool onLastScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _controller,
            children: pages,
            onPageChanged: (index) {
              setState(() {
                onLastScreen = (index == 3);
              });
            },
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: JumpingDotEffect(
                    dotColor: Colors.blue.shade200,
                    activeDotColor: Colors.blue,
                    dotHeight: 20,
                    dotWidth: 20,
                    spacing: 10,
                    verticalOffset: 15,
                    jumpScale: 1,
                  ),
                ),
                onLastScreen
                    ? GestureDetector(
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) {
                                return const LoginScreen();
                              }),
                            ),
                          );
                        },
                      )
                    : GestureDetector(
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
