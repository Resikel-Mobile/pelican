import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/views/controllers/bottomnavigation_controller.dart';
import 'package:pelican/views/department/departmentView.dart';
import 'package:pelican/views/discussion/discussionView.dart';
import 'package:pelican/views/home/homeView.dart';
import 'package:pelican/views/task/taskView.dart';
import 'package:pelican/widgets/bottom_navbar.dart';

class mainscreenview extends StatelessWidget {
 
 final BottomnavigationController navController = Get.put(BottomnavigationController());

  final List<Widget> pages = [
    homeView(),
    taskView(),
    CommunityView(),
    departmentview(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[navController.selectedIndex.value]), // Update UI secara real-time

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(0),
        child: BottomNavbar(),
      )
    );
  }
}