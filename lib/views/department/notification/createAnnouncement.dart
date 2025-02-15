import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';
import 'package:pelican/models/member.dart';

class CreateAnnouncement extends StatefulWidget {
  const CreateAnnouncement({super.key});

  @override
  _CreateAnnouncementState createState() => _CreateAnnouncementState();
}

class _CreateAnnouncementState extends State<CreateAnnouncement> {
  List<memberModel> selectedMembers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text("Create Announcement",
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
              onPressed: () {},
              child: Text("Post",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                    color: Color.fromRGBO(245, 71, 62, 1),
                    fontWeight: FontWeight.w600,
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Notify To",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                )),
            const SizedBox(height: 8),

            // Tombol pilih anggota
            GestureDetector(
              onTap: () async {
                final result = await Get.toNamed(routeName.selectMember);
                if (result != null && result is List<memberModel>) {
                  setState(() {
                    selectedMembers = result;
                  });
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 242, 244, 1),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.people, color: Color.fromRGBO(99, 106, 121, 1)),
                    SizedBox(width: 5),
                    Text(
                      selectedMembers.isEmpty
                          ? "All Member"
                          : "${selectedMembers.length} Selected",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        color: Color.fromRGBO(99, 106, 121, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Menampilkan daftar anggota yang dipilih
            if (selectedMembers.isNotEmpty)
              Wrap(
                spacing: 8,
                children: selectedMembers
                    .map((member) => Chip(
                          label: Text(
                            member.name,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(99, 106, 121, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          backgroundColor: Color.fromRGBO(241, 242, 244, 1),
                          deleteIcon: Icon(Icons.close, size: 16),
                          onDeleted: () {
                            setState(() {
                              selectedMembers.remove(member);
                            });
                          },
                        ))
                    .toList(),
              ),

            const SizedBox(height: 20),
            Text("Subject",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                )),
            const SizedBox(height: 5),
            TextFormField(
              initialValue: "Input Subject ",
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                prefixIcon: Image.asset("assets/icons/ic_departmentinfo.png"),
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
              ),
            ),
            const SizedBox(height: 20),
            Text("Message Content",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                )),
            const SizedBox(height: 5),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Input Text disini...",
                hintStyle: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
