import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SignInSignUpScreen extends StatelessWidget {
  SignInSignUpScreen({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    // SignIn View
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            _pageController.animateToPage(1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.decelerate);
                          },
                        ).animate().rotate(
                            begin: -0.07, alignment: Alignment.bottomLeft),
                      ],
                    ),
                    // SignUp View
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            _pageController.animateToPage(0,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.decelerate);
                          },
                        ).animate().rotate(
                            begin: -0.07, alignment: Alignment.bottomRight),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
