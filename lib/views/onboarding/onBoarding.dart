import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';
import 'package:pelican/views/onboarding/OnBoardingData.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: OnboardingBody(),
      ),
    );
  }
}

class OnboardingController extends GetxController {
  // Menggunakan RxInt untuk memanage currentIndex secara reaktif
  var currentIndex = 0.obs;

  // Dapatkan controller untuk halaman
  final PageController pageController = PageController();

  void nextPage() {
    if (currentIndex < OnboardingData().items.length - 1) {
      currentIndex++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }
}

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat controller Onboarding
    final controller = Get.put(OnboardingController());
    final onboardingData = OnboardingData();

    return Stack(
      children: [
        Center(
          child: PageView.builder(
            controller: controller.pageController,
            onPageChanged: (value) {
              controller.currentIndex.value = value; // Update currentIndex
            },
            itemCount: onboardingData.items.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  // Images
                  Positioned.fill(
                    child: Image.asset(onboardingData.items[index].image,
                        fit: BoxFit.cover),
                  ),

                  Positioned(
                    bottom: 180,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        // Titles
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                          child: Text(
                            onboardingData.items[index].title,
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              height: 1.2,
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),

                        // Description
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                          child: Text(
                            onboardingData.items[index].description,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Column(
            children: [buildDots(controller), button(controller)],
          ),
        )
      ],
    );
  }

  // Dots
  Widget buildDots(OnboardingController controller) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(OnboardingData().items.length, (index) {
          return AnimatedContainer(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: controller.currentIndex.value == index
                  ? Color.fromRGBO(217, 217, 217, 1)
                  : Colors.grey,
            ),
            height: 7,
            width: controller.currentIndex.value == index ? 30 : 7,
            duration: const Duration(milliseconds: 700),
          );
        }),
      ),
    );
  }

  // Button
Widget button(OnboardingController controller) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    width: Get.width * 0.9,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color.fromRGBO(218, 37, 28, 1),
    ),
    child: TextButton(
      onPressed: () {
        if (controller.currentIndex.value == OnboardingData().items.length - 1) {
          // Pindah ke halaman login
          Get.offAllNamed(routeName.loginView);
        } else {
          // Pindah ke halaman berikutnya
          controller.nextPage();
        }
      },
      child: Obx(
        () => Text(
          controller.currentIndex.value == OnboardingData().items.length - 1
              ? "Get Started"
              : "Next",
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),
        ),
      ),
    ),
  );
}

}
