import 'package:flutter/material.dart';

class attendanceDetail extends StatelessWidget {
  const attendanceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
            centerTitle: true,
        title:  Text("05 Feb 2025",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )
        ),
           
      ),
    );
  }
}