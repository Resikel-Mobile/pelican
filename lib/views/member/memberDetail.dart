import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/models/member.dart';
import 'package:pelican/routes/route_name.dart';
import 'package:pelican/views/controllers/task_controller.dart';

class memberDetail extends StatelessWidget {
  final memberModel member;
  memberDetail({super.key, required this.member});
  final TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Detail Member",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 17,
              fontWeight: FontWeight.w700,
            )),
        actions: [
          Container(
            height: 32,
            width: Get.width * 0.24,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(254, 243, 242, 1),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  // Tambahkan aksi untuk opsi tambahan
                  Get.toNamed(routeName.memberEdit, arguments: member);
                },
                child: Text("Edit",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      color: Color.fromRGBO(245, 71, 62, 1),
                      fontWeight: FontWeight.w600,
                    ))),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            // part profile
            Container(
              color: Colors.white,
              width: Get.width,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: member.imageUrl != null
                        ? AssetImage(member.imageUrl!)
                        : AssetImage("assets/images/default_avatar.png"),
                  ),
                  SizedBox(height: 12),

                  // Nama & Jabatan
                  Text(
                    member.name,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    member.category ?? "No Category",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
            // end Foto Profil

            // card attendance log
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              height: Get.height * 0.25,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 14, right: 14, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Attendance Log",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        Text("View Log",
                            style: TextStyle(
                              color: Color.fromRGBO(227, 10, 10, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 2),
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
            ),
            // end card attendance log

            // card task
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: Get.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Task",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ditugaskan
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: Get.width * 0.27,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(235, 236, 238, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ditugaskan",
                                  style: TextStyle(
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
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                        ),
                      ),

                      // tepat waktu
                      Container(
                        width: Get.width * 0.27,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(235, 236, 238, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tepat Waktu",
                                style: TextStyle(
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
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                      ),

                      // approved
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: Get.width * 0.27,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(235, 236, 238, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Approved",
                                  style: TextStyle(
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
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // end card task

            Expanded(
              child: Obx(() {
                var groupedTasks = controller.groupedTasks;
                return Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: groupedTasks.keys.length,
                    itemBuilder: (context, index) {
                      String date = groupedTasks.keys.elementAt(index);
                      List tasks = groupedTasks[date]!;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...tasks.map((task) => Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: ListTile(
                                  leading:
                                      Image.asset("assets/icons/ic_taskbg.png"),
                                  title: Text(task['title']!,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Due ${task['dueDate']}',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 24, 41, 0.6),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Divider(
                                        height: 1,
                                        color: Color.fromRGBO(224, 226, 230, 1),
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      );
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
