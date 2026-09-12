import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/sources/assets_manager.dart';
import '../../../core/sources/colors_manager.dart';
import '../../../core/sources/routes_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
            currentPage = index;
          });
        },
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                ImageAssets.islamiLogo,
              ),

              const Spacer(),

              Image.asset(
                ImageAssets.onboarding1,
              ),

              const Spacer(),

              Text(
                "Welcome To Islami App",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.gold,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                        (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: OnboardingIndicator(
                          isActive: currentPage == index,
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child:
                  TextButton(
                    onPressed: () {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorsManager.gold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                ImageAssets.islamiLogo,
              ),
              Spacer(),
              Image.asset(
                ImageAssets.onboarding2,
              ),
              Text("Welcome To Islami",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: ColorsManager.gold),),
              Spacer(),
              Text("We Are Very Excited To Have You In Our Community",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.w700,fontSize: 20,color: ColorsManager.gold),),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                        (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: OnboardingIndicator(
                          isActive: currentPage == index,
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                ImageAssets.islamiLogo
              ),
              Spacer(),
              Image.asset(
                ImageAssets.onboarding3,
              ),
              Spacer(),
              Text("Reading the Quran",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color:ColorsManager.gold),),
              Spacer(),
              Text("Read, and your Lord is the Most Generous",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager.gold),),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                        (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: OnboardingIndicator(
                          isActive: currentPage == index,
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(

                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Column(
            children: [
              Image.asset(
                ImageAssets.islamiLogo,
              ),

              const Spacer(),

              Image.asset(
                ImageAssets.onboarding4,
              ),

              const Spacer(),

              Text(
                "Bearish",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.gold,
                ),
              ),

              const Spacer(),

              Text(
                "Praise the name of your Lord, the Most High",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: ColorsManager.gold,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                        (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: OnboardingIndicator(
                          isActive: currentPage == index,
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                ImageAssets.islamiLogo,
              ),

              const Spacer(),

              Image.asset(
                ImageAssets.onboarding5,
              ),

              const Spacer(),

              Text(
                "Holy Quran Radio",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.gold,
                ),
              ),

              const Spacer(),

              Text(
                "You can listen to the Holy Quran Radio through the application for free and easily",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: ColorsManager.gold,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                        (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: OnboardingIndicator(
                          isActive: currentPage == index,
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();

                        await prefs.setBool('onboardingSeen', true);

                        if (!context.mounted) return;

                        Navigator.pushReplacementNamed(
                          context,
                          RoutesManager.mainLayout,
                        );
                      },
                      child: Text(
                        "Finish",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsManager.gold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}





















class OnboardingIndicator extends StatelessWidget {
  final bool isActive;

  const OnboardingIndicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 16 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive
            ? ColorsManager.gold
            : Colors.grey,
      ),
    );
  }
}