import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/views/controllers/member_controller.dart';
import 'package:pelican/widgets/attendanceLogItem.dart';

class attendanceLog extends StatelessWidget {
  attendanceLog({super.key});
  final MemberController memberController = Get.put(MemberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
            )),
        centerTitle: true,
        title: Text("Attendance",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Obx(() {
          var groupedCheckIns = <String, List<dynamic>>{};

          for (var checkIn in memberController.members) {
            groupedCheckIns.putIfAbsent(checkIn.date, () => []).add(checkIn);
          }

          return ListView.builder(
            itemCount: groupedCheckIns.length,
            itemBuilder: (context, index) {
              String date = groupedCheckIns.keys.elementAt(index);
              List<dynamic> checkInsByDate = groupedCheckIns[date]!;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      date,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ...checkInsByDate
                      .map((members) => attendanceLogItem(
                            members: members,
                          ))
                      .toList()
                ],
              );
            },
          );
        }),
      ),
    );
  }
}
