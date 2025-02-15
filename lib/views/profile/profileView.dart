import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class profileView extends StatelessWidget {
  const profileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(218, 37, 28, 1),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        titleSpacing: 0,
        title: Text("My Profile",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 17,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: Stack(
        children: [
          // Background Container
          Container(
            width: Get.width,
            height: Get.height * 0.12,
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 37, 28, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
          ),
          // end container

          // card
          Padding(
            padding: EdgeInsets.only(
                left: 24, right: 24, top: Get.height * 0.08, bottom: 10),
            child: Container(
              width: Get.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: EdgeInsets.only(top: Get.height * 0.075),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Sergio Alexander",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("Supervisor",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        )),

                    SizedBox(height: 10),

                    // List Menu
                    menuItem(Image.asset("assets/icons/ic_userr.png"),
                        "Edit Profile"),
                    Divider(
                      endIndent: 25,
                      indent: 35,
                    ),
                    menuItem(Image.asset("assets/icons/ic_key.png"),
                        "Change Password"),
                    Divider(
                      endIndent: 25,
                      indent: 35,
                    ),
                    menuItem(
                        Image.asset("assets/icons/ic_logout.png"), "Logout"),
                  ],
                ),
              ),
            ),
          ),

          // foto profile
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: Get.height * 0.028),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // Warna border putih
                  width: 3, // Ketebalan border
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/cthpp.png", // Ganti dengan path gambar Anda
                  width: 100, // Sesuaikan ukuran gambar
                  height: 100, // Sesuaikan ukuran gambar
                  fit: BoxFit
                      .cover, // Menyesuaikan gambar agar tidak terdistorsi
                ),
              ),
            ),
          )
          // end foto profile
        ],
      ),
    );
  }
}

// Widget untuk item menu
Widget menuItem(Widget leadingIcon, String title,
    {Color color = Colors.black}) {
  return ListTile(
    leading: leadingIcon,
    title: Text(title,
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        )),
    trailing: Icon(Icons.arrow_forward_ios,
        size: 16, color: Color.fromRGBO(50, 54, 62, 1)),
    onTap: () {
      // Tambahkan navigasi atau aksi di sini
    },
  );
}
