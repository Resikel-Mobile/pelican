import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';

class registerView extends StatelessWidget {
  const registerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/bgauth.png",
              fit: BoxFit.contain,
            ),
          ),

          // Form Login 
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 42, 20, 60),
                margin: EdgeInsets.only(bottom: 65),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Logo
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 30,
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 25),

                    // 🔹 Text Welcome Back
                    Text(
                      "Create Your Account",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(218, 37, 28, 1),
                      ),
                    ),
                    SizedBox(height: 20),

                    // 🔹 TextField Username
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(242, 243, 247, 1),
                        hintText: "Username",
                        hintStyle: TextStyle(fontFamily: 'Montserrat'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // 🔹 TextField Email
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(242, 243, 247, 1),
                        hintText: "Email@gmail.com",
                        hintStyle: TextStyle(fontFamily: 'Montserrat'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // 🔹 TextField Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(242, 243, 247, 1),
                        hintText: "Password",
                        hintStyle: TextStyle(fontFamily: 'Montserrat'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Image.asset(
                            "assets/icons/visibility_off.png",
                            alignment: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),

                    // 🔹 Button Sign In
                    ElevatedButton(
                      onPressed: () {
                        Get.snackbar("Login", "Login button pressed!",
                            snackPosition: SnackPosition.BOTTOM);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(218, 37, 28, 1),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // 🔹 Sign Up Text
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(routeName.loginView); // Navigasi ke halaman Register jika ada
                      },
                      child: Text.rich(
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: Color.fromRGBO(83, 83, 83, 1),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: " Sign In",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                color: Color.fromRGBO(70, 70, 70, 1),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}