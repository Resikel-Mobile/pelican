import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/models/member.dart';
import 'package:pelican/views/controllers/pickimage_controller.dart';

class memberEdit extends StatelessWidget {
  final memberModel member;
  memberEdit({super.key, required this.member});
  final PickImageController controller = Get.put(PickImageController());

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
        title: Text("Edit Profile",
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
                child: Text("Save",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      color: Color.fromRGBO(245, 71, 62, 1),
                      fontWeight: FontWeight.w600,
                    ))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            controller.selectedImage.value.isNotEmpty
                                ? Image.file(
                                    File(controller.selectedImage.value),
                                    fit: BoxFit.cover,
                                  ).image
                                : AssetImage(member.imageUrl!),
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

              // textfield name
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Member’s Name",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    )),
              ),
              const SizedBox(height: 6),
              TextFormField(
                initialValue: member.name,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
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
              // end textfield name
              const SizedBox(height: 20),

              // textfield email
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Email",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    )),
              ),
              const SizedBox(height: 6),
              TextFormField(
                initialValue: "email123@gmail.com",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
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
              // end textfield email
              const SizedBox(height: 20),

              // textfield password
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    )),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                initialValue: "Survey & Inspection",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
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
              // end textfield password
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
