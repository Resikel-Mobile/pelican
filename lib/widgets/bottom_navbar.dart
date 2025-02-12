import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/views/controllers/bottomnavigation_controller.dart';

class BottomNavbar extends StatelessWidget {
  final BottomnavigationController navController = Get.put(BottomnavigationController());

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
            fontSize: 12, 
            fontWeight: FontWeight.w600, 
            fontFamily: 'Montserrat', 
            color: Color.fromRGBO(218, 37, 28, 1), 
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12, 
            fontWeight: FontWeight.w400, 
            fontFamily: 'Montserrat',
            color: Color.fromRGBO(99, 106, 121, 1) 
          ),
        ),
      ),
      child: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey[700],
            showSelectedLabels: true, 
            showUnselectedLabels: true,
            currentIndex: navController.selectedIndex.value,
            onTap: navController.changeIndex,
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon("assets/icons/home.png", 0),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: _buildIcon("assets/icons/ic_task.png", 1),
                label: "Task",
              ),
              BottomNavigationBarItem(
                icon: _buildIcon("assets/icons/ic_discussion.png", 2),
                label: "Community",
              ),
            ],
          )),
    );
  }

  Widget _buildIcon(String assetPath, int index) {
    return Obx(() => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (navController.selectedIndex.value == index)
              Container(
                margin: EdgeInsets.only(bottom: 6),
                width: 65,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            Image.asset(
              assetPath,
              width: 18,
              height: 18,
              color: navController.selectedIndex.value == index ? Colors.red : Colors.grey,
            ),
          ],
        ));
  }
}
