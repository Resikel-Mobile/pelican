import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pelican/views/splash/splash_controller.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<splashController>(
      init: splashController(),
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(
                height: 15,
              ),
              Text(
                "PELICAN\nTRACK",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  height: 1.2
                ),
                textAlign: TextAlign.center,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
