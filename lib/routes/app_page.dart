import 'package:pelican/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:pelican/views/attendance/attendanceDetail.dart';
import 'package:pelican/views/attendance/attendanceView.dart';
import 'package:pelican/views/auth/loginView.dart';
import 'package:pelican/views/auth/registerView.dart';

import 'package:pelican/views/mainscreenView.dart';
import 'package:pelican/views/onboarding/onBoarding.dart';
import 'package:pelican/views/splash/splashScreen.dart';

class appPage {

  static final INITIAL = routeName.splashScreen;

  static final pages = [
    // tambahkan app page dan name route disini
    GetPage(name: routeName.splashScreen, page: () => splashScreen()),
    GetPage(name: routeName.onBoarding, page: () => onBoarding()),
    // login route
    GetPage(name: routeName.loginView, page: () => loginView()),
    GetPage(name: routeName.registerView, page: () => registerView()),

    GetPage(name: routeName.mainscreenview, page: () => mainscreenview()),
    GetPage(name: routeName.attendanceView, page: () => attendanceView()),
    GetPage(name: routeName.attendanceDetail, page: () => attendanceDetail()),

  ];
}
