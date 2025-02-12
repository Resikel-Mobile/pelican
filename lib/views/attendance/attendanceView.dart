import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            height: Get.height * 0.23,
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 37, 28, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
