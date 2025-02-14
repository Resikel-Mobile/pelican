import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/views/controllers/member_controller.dart';

class selectMember extends StatelessWidget {
  selectMember({super.key});
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
        title: Text("Select Member",
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
                  // Ambil anggota yang dipilih
                  final selectedMembers = controller.selectedMembers;
                  // Kembali ke halaman sebelumnya dengan data anggota yang dipilih
                  Get.back(result: selectedMembers);
                },
                child: Text("Done",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      color: Color.fromRGBO(245, 71, 62, 1),
                      fontWeight: FontWeight.w600,
                    ))),
          )
        ],
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.members.length,
          itemBuilder: (context, index) {
            final member = controller.members[index];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: member.imageUrl != null
                      ? AssetImage(member.imageUrl!)
                      : null,
                  child: member.imageUrl == null
                      ? Icon(Icons.person, color: Colors.white)
                      : null,
                  backgroundColor: member.imageUrl == null ? Colors.grey : null,
                ),
                title: Text(member.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    )),
                trailing: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  activeColor: Colors.red,
                  value: member.isSelected,
                  onChanged: (val) => controller.toggleSelection(index),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
