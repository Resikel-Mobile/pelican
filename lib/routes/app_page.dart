import 'package:pelican/views/member/memberDetail.dart';
import 'package:pelican/views/member/memberEdit.dart';
import 'package:pelican/views/member/membersView.dart';
import 'package:pelican/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:pelican/views/attendance/attendanceDetail.dart';
import 'package:pelican/views/attendance/attendanceLog.dart';
import 'package:pelican/views/attendance/attendanceSummary.dart';
import 'package:pelican/views/attendance/attendanceView.dart';
import 'package:pelican/views/auth/loginView.dart';
import 'package:pelican/views/auth/registerView.dart';
import 'package:pelican/views/department/departmentInfo.dart';
import 'package:pelican/views/department/departmentView.dart';
import 'package:pelican/views/department/notification/createAnnouncement.dart';
import 'package:pelican/views/department/notification/selectMember.dart';

import 'package:pelican/views/mainscreenView.dart';
import 'package:pelican/views/onboarding/onBoarding.dart';
import 'package:pelican/views/profile/profileView.dart';
import 'package:pelican/views/report/memberHistory.dart';
import 'package:pelican/views/report/reportAttendance.dart';
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
    GetPage(name: routeName.attendanceSummary, page: () => attendanceSummary()),
    GetPage(name: routeName.attendanceLog, page: () => attendanceLog()),

    GetPage(name: routeName.departmentview, page: () => departmentview()),
    GetPage(name: routeName.departmentInfo, page: () => departmentInfo()),
    GetPage(name: routeName.selectMember, page: () => selectMember()),
    GetPage(
        name: routeName.CreateAnnouncement, page: () => CreateAnnouncement()),

    GetPage(name: routeName.membersView, page: () => membersView()),
    GetPage(
        name: routeName.memberEdit,
        page: () => memberEdit(
              member: Get.arguments,
            )),
    GetPage(
      name: routeName.memberDetail,
      page: () => memberDetail(member: Get.arguments),
    ),

    // report
    GetPage(name: routeName.reportAttendance, page: () => reportAttendance()),
    GetPage(name: routeName.memberHistory, page: () => memberHistory()),

    // profile
    GetPage(name: routeName.profileView, page: () => profileView()),
  ];
}
