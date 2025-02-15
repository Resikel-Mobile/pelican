import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/views/controllers/pickimage_controller.dart';

class departmentInfo extends StatelessWidget {
  departmentInfo({super.key});
  final PickImageController controller =
      Get.put(PickImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
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
                child: Text("Edit",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(245, 71, 62, 1),
                      fontWeight: FontWeight.w600,
                    ))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: controller.selectedImage.value.isNotEmpty
                                  ? Image.file(
                                      File(controller.selectedImage.value),
                                      fit: BoxFit.cover,
                                    ).image
                                  : const AssetImage(
                                      'assets/images/survey.png'),
                              fit: BoxFit.cover)),
                    ),
                    GestureDetector(
                      onTap: controller.pickImage,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.camera_alt,
                            color: Colors.white, size: 18),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 45),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Nama Department",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  )),
            ),
            const SizedBox(height: 5),
            TextFormField(
              initialValue: "Survey & Inspection",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              readOnly: true,
              decoration: InputDecoration(
                prefixIcon: Image.asset("assets/icons/ic_departmentinfo.png"),
                filled: true,
                fillColor: Colors.transparent,
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Description",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  )),
            ),
            const SizedBox(height: 5),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Input Text disini...",
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Colors.transparent,
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
            )
          ],
        ),
      ),
    );
  }
}
