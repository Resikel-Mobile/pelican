import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pelican/routes/route_name.dart';
import 'package:pelican/views/controllers/clockin_controller.dart';
import 'package:get/get.dart';

class attendanceDetail extends StatelessWidget {
  final ClockInController controller = Get.put(ClockInController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
          centerTitle: true,
          title: Text("05 Feb 2025",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Obx(
                () => Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  width: double.infinity,
                  height: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: controller.imagePath.value.isNotEmpty
                        ? DecorationImage(
                            image: FileImage(File(controller.imagePath.value)),
                            fit: BoxFit.cover)
                        : DecorationImage(
                            scale: 2,
                            image: AssetImage('assets/icons/ic_kamera.png'),
                            fit: BoxFit.cover,
                          ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: Get.width * 0.7,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        onPressed: controller.pickImage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/ic_refresh.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Retake Photo",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // form input
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Notes (Optional)",
                      style: TextStyle(
                        color: Color.fromRGBO(126, 134, 149, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Input Subject",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Image.asset("assets/icons/ic_deskripsi.png"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("Location",
                      style: TextStyle(
                        color: Color.fromRGBO(126, 134, 149, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Input Subject",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: const Icon(Icons.location_on),
                      prefixIconColor: Color.fromRGBO(99, 106, 121, 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  // end form input

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: Get.height * 0.1),
                      width: Get.width,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(routeName.attendanceSummary);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text("Clock In",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
