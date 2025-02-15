import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';
import 'package:pelican/views/controllers/report_attendance_controller.dart';

class reportAttendance extends StatelessWidget {
  reportAttendance({super.key});
  final ReportAttendanceController controller =
      Get.put(ReportAttendanceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
            )),
        titleSpacing: 0,
        title: Text("Attendance Report",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 17,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // part dropdown
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // dropdown nama
                Text("Employee's Name",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    )),
                SizedBox(height: 8),
                Obx(() {
                  return DropdownButtonFormField<String>(
                    icon: SizedBox.shrink(),
                    value: controller.selectedEmployee.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(224, 226, 230, 1),
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(224, 226, 230, 1),
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(224, 226, 230, 1),
                          width: 1.5,
                        ),
                      ),
                      suffix: Image.asset("assets/icons/ic_downarrow.png"),
                      prefixIcon:
                          Image.asset("assets/icons/ic_departmentinfo.png"),
                    ),
                    hint: Text(
                      "Select Employee",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    items: controller.members.map((name) {
                      return DropdownMenuItem(
                        value: name,
                        child: Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      controller.selectedEmployee.value = value;
                    },
                  );
                }),
                // end dropdown nama
                SizedBox(height: 16),

                // dropdown date
                Text("Select Date",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    )),
                SizedBox(height: 8),
                Obx(() {
                  return DropdownButtonFormField<String>(
                    icon: SizedBox.shrink(),
                    value: controller.selectedDate.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(224, 226, 230, 1),
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(224, 226, 230, 1),
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(224, 226, 230, 1),
                          width: 1.5,
                        ),
                      ),
                      suffix: Image.asset("assets/icons/ic_downarrow.png"),
                      prefixIcon: Image.asset("assets/icons/ic_kalender.png"),
                    ),
                    items: controller.months.map((month) {
                      return DropdownMenuItem(
                        value: month,
                        child: Text(
                          month,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      controller.selectedDate.value = value!;
                    },
                  );
                }),
                // end dropdown date
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Divider(),
          ),

          // card
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ditugaskan
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: Get.width * 0.29,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(235, 236, 238, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Absent",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(71, 84, 103, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("19",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  ),
                ),

                // tepat waktu
                Container(
                  width: Get.width * 0.29,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(235, 236, 238, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Clock In",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color.fromRGBO(71, 84, 103, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("10",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ),

                // approved
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: Get.width * 0.29,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(235, 236, 238, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Late Clock In",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(71, 84, 103, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("20",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // end card

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(routeName.memberHistory);
                      },
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        contentPadding: EdgeInsets.symmetric(vertical: 2),
                        leading: Text("05 Feb 2024",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Color.fromRGBO(50, 54, 62, 1),
                              fontWeight: FontWeight.w600,
                            )),
                        title: Center(
                          child: Text(
                            '08:00',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Color.fromRGBO(50, 54, 62, 1),
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow
                                .ellipsis, // Jika teks terlalu panjang, gunakan ellipsis
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    Divider(height: 0.5, color: Colors.grey[300]),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
