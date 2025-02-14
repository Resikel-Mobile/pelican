import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';

class departmentview extends StatelessWidget {
  departmentview({super.key});
  final List<Map<String, dynamic>> tabs = [
    {'icon': Icons.task, 'label': 'Task'},
    {'icon': Icons.chat, 'label': 'Discussion'},
    {'icon': Icons.group, 'label': 'Members'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(218, 37, 28, 1),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded,
                color: Color.fromRGBO(255, 255, 255, 1))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/ic_adduser.png"))
        ],
      ),
      body: Stack(
        children: [
          // Background Container
          Container(
            width: Get.width,
            height: Get.height * 0.07,
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 37, 28, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
          ),

          // header
          Padding(
            padding:
                EdgeInsets.only(left: 20, right: 20, top: Get.height * 0.01),
            child: Container(
              margin: EdgeInsets.only(top: 15, bottom: 6),
              width: Get.width,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.05), // Warna shadow dengan transparansi
                    blurRadius: 8, // Tingkat blur shadow
                    spreadRadius: 0, // Seberapa jauh shadow menyebar
                    offset: Offset(0, 0), // Posisi bayangan (x, y)
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                        "assets/images/survey.png",
                      )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("Survey & Inspection",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            width: 6,
                          ),
                          GestureDetector(
                              onTap: () {
                                Get.toNamed(routeName.departmentInfo);
                              },
                              child: Image.asset(
                                "assets/icons/ic_info.png",
                                fit: BoxFit.cover,
                              ))
                        ],
                      ),
                      Text("10 Members",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          // end header

          Padding(
            padding: EdgeInsets.only(top: Get.height * 0.12),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: tabs
                        .map((tab) => Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ChoiceChip(
                                avatar: Icon(
                                  tab['icon'],
                                  color: Color.fromRGBO(99, 106, 121, 1),
                                  size: 18,
                                ),
                                label: Text(
                                  tab['label'],
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(99, 106, 121, 1)),
                                ),
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color: Color.fromRGBO(241, 242, 244, 1),
                                  ),
                                ),
                                selected: false,
                                onSelected: (isSelected) {},
                                selectedColor: Color.fromRGBO(241, 242, 244, 1),
                                backgroundColor:
                                    Color.fromRGBO(241, 242, 244, 1),
                                showCheckmark: false,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(routeName.CreateAnnouncement);
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/ic_announce.png"),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Announce Something to your team',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading:
                                Image.asset("assets/icons/ic_taskdepart.png"),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween, // Pastikan ada spasi antar elemen
                              children: [
                                Expanded(
                                  // Supaya teks title tidak kepotong
                                  child: Text(
                                    'Lorem ipsum dolor sit amet',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Jika teks terlalu panjang, gunakan ellipsis
                                  ),
                                ),
                                Text(
                                  '09:10',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'by Sergio Alexander',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(102, 112, 133, 1)),
                                ),
                                Text(
                                  maxLines: 1,
                                  'ed ut perspiciatis unde omnis iste natus error...',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
