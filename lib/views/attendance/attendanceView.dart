import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';

class attendanceView extends StatelessWidget {
  const attendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container
          Container(
            width: Get.width,
            height: Get.height * 0.22,
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 37, 28, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: Get.height * 0.04),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      )),
                  Text("Attendance",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.abc,
                        color: Colors.transparent,
                      )),
                ],
              ),
            ),
          ),

          // Clock in
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.145,
              left: Get.width * 0.05,
              right: Get.width * 0.05,
            ),
            child: Container(
              width: Get.width,
              height: Get.height * 0.33,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tue, 4 Feb 2025",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            )),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(69, 179, 105, 0.15),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text("Sedang Bekerja",
                              style: TextStyle(
                                color: Color.fromRGBO(69, 179, 105, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("08:00 AM - 05:00 PM",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Divider(
                        height: 1,
                        color: Color.fromRGBO(224, 226, 230, 1),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/icons/ic_marker.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Location",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(28, 4, 0, 14),
                      child: Text(
                          "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    Container(
                      height: 45,
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(routeName.attendanceDetail);
                        },
                        child: Text("Clock In",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            )),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(245, 71, 62, 1),
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // end clock in

          Padding(
            padding: EdgeInsets.only(top: Get.height * 0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Employee Attendance Log",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                      Text("See More",
                          style: TextStyle(
                            color: Color.fromRGBO(245, 71, 62, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 10),

                // TabBar (Sudah Clock In & Belum Clock In)
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        ),
                        tabs: [
                          Tab(text: "Sudah Clock In"),
                          Tab(text: "Belum Clock In"),
                        ],
                      ),

                      // Isi Tab View
                      SizedBox(
                        height: Get.height *
                            0.4, // Sesuaikan tinggi agar tidak overflow
                        child: TabBarView(
                          children: [
                            // Sudah Clock In
                            ListView.separated(
                              itemCount: 5,
                              separatorBuilder: (context, index) =>
                                  Divider(color: Colors.grey[300]),
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/avatar.png"), // Ganti dengan gambar yang sesuai
                                  ),
                                  title: Text(
                                    "Karina",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text("Check in on 08:00"),
                                );
                              },
                            ),

                            // Belum Clock In
                            ListView.separated(
                              itemCount: 2,
                              separatorBuilder: (context, index) =>
                                  Divider(color: Colors.grey[300]),
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/avatar.png"), // Ganti dengan gambar yang sesuai
                                  ),
                                  title: Text(
                                    "Rian",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text("Belum Check in"),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
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
