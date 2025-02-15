import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container
          Container(
            padding: EdgeInsets.only(top: 20),
            width: Get.width,
            height: Get.height * 0.19,
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 37, 28, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(routeName.profileView);
                    },
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/cthpp.png"),
                            radius: Get.width * 0.065,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Milo Milow",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                )),
                            Text("Supervisor A",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    padding: EdgeInsets.only(right: 22),
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      size: 27,
                      color: Colors.white,
                    ))
              ],
            ),
          ),

          // TextField & Konten Scrollable
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: Get.height * 0.16,
                left: Get.width * 0.05,
                right: Get.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width * 0.86,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          spreadRadius: 0,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset("assets/icons/search.png"),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Ingin mencari apa?',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(105, 105, 105, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  // fitur
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // attendance
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(routeName.attendanceView);
                        },
                        child: Container(
                          width: Get.width * 0.27,
                          height: 86,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/ic_artboard.png"),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Attendance",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ),
                      ),

                      // report
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(routeName.reportAttendance);
                        },
                        child: Container(
                          width: Get.width * 0.27,
                          height: 86,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/ic_report.png"),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Report",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ),
                      ),

                      // member
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(routeName.membersView);
                        },
                        child: Container(
                          width: Get.width * 0.27,
                          height: 86,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/ic_member.png"),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Member",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // end fitur

                  SizedBox(height: 25),

                  // Expanded untuk Scrollable Content
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Department",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                          _departmentCard("Survey & Inspection",
                              "assets/images/survey.png"),
                          _departmentCard("Field Operations",
                              "assets/images/operation.png"),
                          _departmentCard("Security and Safety",
                              "assets/images/safety.png"),
                          _departmentCard("Construction and Maintenance",
                              "assets/images/maintenance.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk Card Department
  Widget _departmentCard(String title, String imagePath) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routeName.departmentview);
      },
      child: Container(
        margin: EdgeInsets.only(top: 15, bottom: 4),
        width: Get.width,
        height: 85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            Text(title,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
      ),
    );
  }
}
