import 'package:flutter/material.dart';

import 'onboarding_page1.dart';
import 'onboarding_page2.dart';
import 'onboarding_page3.dart';
import '../auth/login_screen.dart';

class OnboardingController extends StatefulWidget {
  const OnboardingController({super.key});

  @override
 State<OnboardingController> createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  final PageController _pageController = PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8F5),

      body: Column(
        children: [

          Expanded(
            child: PageView(
              controller: _pageController,

              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },

              children: const [
                OnboardingPage1(),
                OnboardingPage2(),
                OnboardingPage3(),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text("Skip"),
                ),

                Row(
                  children: List.generate(
                    3,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: currentPage == index ? 22 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? const Color(0xFFC8B6A6)
                            : Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC8B6A6),
                  ),
                  onPressed: () {
                    if (currentPage < 2) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    currentPage == 2 ? "Get Started" : "Next",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}