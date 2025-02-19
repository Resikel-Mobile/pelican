import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/app_page.dart';
import 'package:pelican/routes/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: routeName.splashScreen,
      getPages: appPage.pages,
    );
  }
}
