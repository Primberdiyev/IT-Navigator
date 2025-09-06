import 'package:flutter/material.dart';
import 'package:it_navigator/auth/auth.dart';
import 'package:it_navigator/common_base/common_base.dart';
import 'package:it_navigator/localization/app_localization_ex.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({
    super.key,
    required this.router,
  });
  final OnboardingRouter router;

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController();
  final ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      if (pageController.page != null) {
        currentIndex.value = pageController.page!.round();
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.themes;
    final colors = theme.colors;
    final locale = context.locale;
    final images = Assets.images;
    final List<OnboardingModel> items = [
      OnboardingModel(
        title: locale.onboarding_title_1,
        subtitle: locale.onboarding_subtitle_1,
        pathToImage: images.onboarding1,
      ),
      OnboardingModel(
        title: locale.onboarding_title_2,
        subtitle: locale.onboarding_subtitle_2,
        pathToImage: images.onboarding2,
      ),
    ];
    return Scaffold(
      backgroundColor: colors.backgroundColors.onboardingBgColor,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                currentIndex.value = value;
              },
              controller: pageController,
              children: items
                  .map(
                    (e) => OnboardingItem(
                      title: e.title,
                      subtitle: e.subtitle,
                      pathToImage: e.pathToImage,
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 60, bottom: 100, right: 24, left: 24),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: items.length,
                  effect: CustomizableEffect(
                    dotDecoration: DotDecoration(
                      width: 32,
                      height: 8,
                      color: colors.indicatorColors.notActiveIndicatorColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    activeDotDecoration: DotDecoration(
                      width: 32,
                      height: 8,
                      color: colors.indicatorColors.activeIndicatorColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    spacing: 12.0,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    onPressed: () {
                      if (currentIndex.value < items.length - 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      } else {
                        widget.router.navigateToAuth(context);
                      }
                    },
                    text: locale.next,
                    textColor: colors.textColors.onboardingTextColor,
                    fontSize: 20,
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
