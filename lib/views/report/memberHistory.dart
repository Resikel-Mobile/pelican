import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class memberHistory extends StatelessWidget {
  const memberHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: Text("05 Feb 2025",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 22, left: 24, right: 24),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              height: Get.height * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  scale: 2,
                  image: AssetImage('assets/icons/ic_kamera.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // form input
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Notes (Optional)",
                    style: TextStyle(
                      color: Color.fromRGBO(126, 134, 149, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Image.asset("assets/icons/ic_subject.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Work",
                        style: TextStyle(
                          color: Color.fromRGBO(50, 54, 62, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                ),
                const SizedBox(height: 18),
                Text("Location",
                    style: TextStyle(
                      color: Color.fromRGBO(126, 134, 149, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/ic_marker.png",
                      color: Color.fromRGBO(50, 54, 62, 1),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Text(
                          "Jl. Panglima Polim No.37, RT.1/RW.1, Melawai, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12160",
                          maxLines: 3,
                          style: TextStyle(
                            color: Color.fromRGBO(99, 106, 121, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          )),
                    )
                  ],
                ),
                // end form input
              ],
            ),
          ],
        ),
      ),
    );
  }
}
