import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';

class attendanceSummary extends StatelessWidget {
  const attendanceSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Image.asset("assets/icons/ic_cross.png")),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: Get.height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/icons/ic_user.png"),
              SizedBox(
                height: 20,
              ),
              Text("Clock-In Successful!",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("5 Feb 2025",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color.fromRGBO(71, 84, 103, 1),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 10,
              ),
              Text("08:30",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color.fromRGBO(71, 84, 103, 1),
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                  "You’re all set! Your clock-in was successful. Head over to Home to see your assigned tasks.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color.fromRGBO(71, 84, 103, 1),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(routeName.mainscreenview);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Back to Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ))),
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(routeName.attendanceLog);
                  },
                  child: Text("View Attendance Log",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color.fromRGBO(99, 106, 121, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
