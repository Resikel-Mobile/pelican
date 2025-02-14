import 'package:pelican/views/attendance/attendanceDetail.dart';
import 'package:pelican/views/attendance/attendanceLog.dart';
import 'package:pelican/views/attendance/attendanceSummary.dart';
import 'package:pelican/views/attendance/attendanceView.dart';
import 'package:pelican/views/department/departmentInfo.dart';
import 'package:pelican/views/department/departmentView.dart';
import 'package:pelican/views/department/notification/createAnnouncement.dart';
import 'package:pelican/views/department/notification/selectMember.dart';

abstract class routeName {
  // tambahkan nama route disini
  static const splashScreen = '/splashScreen';
  static const onBoarding = '/onBoarding';
  static const loginView = '/loginView';
  static const registerView = '/registerView';
  static const mainscreenview = '/mainscreenView';

  static const attendanceView = '/attendanceView';
  static const attendanceDetail = '/attendanceDetail';
  static const attendanceSummary = '/attendanceSummary';
  static const attendanceLog = '/attendanceLog';

// department
  static const departmentview = '/departmentView';
  static const departmentInfo = '/departmentInfo';
  static const CreateAnnouncement = '/CreateAnnouncement';
  static const selectMember = '/selectMember';
}
