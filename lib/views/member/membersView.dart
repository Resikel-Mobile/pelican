import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/models/member.dart';
import 'package:pelican/routes/route_name.dart';
import 'package:pelican/views/controllers/member_controller.dart';
import 'package:pelican/views/member/memberDetail.dart';

class membersView extends StatelessWidget {
  membersView({super.key});
  final MemberController controller = Get.put(MemberController());

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
        title: Text("Members",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 17,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            // Tombol Add Members
            ListTile(
              onTap: () {
                // Tambahkan aksi jika ingin menambahkan member baru
              },
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.group_add, color: Colors.white),
              ),
              title: Text(
                "Add Members",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Daftar Members
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.members.length,
                  itemBuilder: (context, index) {
                    final memberModel member = controller.members[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: member.imageUrl != null
                            ? AssetImage(member.imageUrl!)
                            : AssetImage("assets/images/default_avatar.png"),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            member.name,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(width: 8), 
                          if (member.category == "Supervisor")
                            BadgeWidget(text: "Supervisor"), 
                        ],
                      ),
                      trailing: member.category != "Supervisor"
                          ? IconButton(
                              icon: Icon(Icons.more_vert),
                              onPressed: () {
                                // Tambahkan aksi untuk opsi tambahan
                                Get.toNamed(routeName.memberDetail,
                                    arguments: member);
                              },
                            )
                          : null, // Hilangkan jika Supervisor
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk Badge Supervisor
class BadgeWidget extends StatelessWidget {
  final String text;
  const BadgeWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.red),
      ),
    );
  }
}
