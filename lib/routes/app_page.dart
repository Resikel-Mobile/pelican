import 'package:pelican/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:pelican/views/onboarding/onBoarding.dart';
import 'package:pelican/views/splash/splashScreen.dart';

class appPage {

  static final INITIAL = routeName.splashScreen;

  static final pages = [
    // tambahkan app page dan name route disini
    GetPage(name: routeName.splashScreen, page: () => splashScreen()),
    GetPage(name: routeName.onBoarding, page: () => onBoarding())
  ];
}
