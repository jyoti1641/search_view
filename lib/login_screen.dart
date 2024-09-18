// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:trustopay/models/Colors.dart';
// import 'package:trustopay/services/api_service.dart';
// import 'package:trustopay/widgets/my_button.dart';
// import 'package:trustopay/widgets/my_textfield.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:trustopay/models/user.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_view/All%20projects/Colors.dart';
import 'package:search_view/otp_screen.dart';
import 'package:search_view/signin_screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final phoneController = TextEditingController();
  // final emailController = TextEditingController();
  // final ApiService _apiService = ApiService();
  bool _isLoading = false;

  Future<void> _handleTap() async {
    setState(() {
      _isLoading = true;
    });

    // try {
    //   if (!phoneController.text.isPhoneNumber) {
    //     _apiService.showErrorDialog(context, 'Please enter valid number');
    //   } else if (phoneController.text.isEmpty) {
    //     _apiService.showErrorDialog(context, 'please enter phone number');
    //   } else {
    //     await _apiService.sendOtp(context, phoneController.text);
    //   }
    // } catch (e) {
    //   // Handle errors if necessary
    // } finally {
    //   setState(() {
    //     _isLoading = false;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: (screenHeight * 0.03),
              ),

              //logo
              Center(
                child: Container(
                  height: (screenHeight * 0.09),
                  width: 150,
                  child: SvgPicture.asset(
                    'assets/images/tplogo.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),

              SizedBox(
                height: (screenHeight * 0.03),
              ),
              //image
              Container(
                height: (screenHeight * 0.25),
                width: (screenWidth * 0.58),
                child: SvgPicture.asset(
                  'assets/images/login.svg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: (screenHeight * 0.01),
              ),
              //heading
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gradiantBlue,
                    ),
                  ),
                  Text(
                    'Please login to continue',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (screenHeight * 0.03),
              ),
              //phone field
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Container(
                      height: (screenHeight * 0.06),
                      width: (screenWidth * 0.85),
                      child: TextField(
                        controller: phoneController,
                        autofocus: true,
                        obscureText: false,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          isCollapsed: false,
                          isDense: false,
                          contentPadding: EdgeInsets.all(screenHeight * 0.01),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff3D4194)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter your phone number',
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: (screenHeight * 0.04),
              // ),

              //email field
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Center(
              //       child: Container(
              //         height: 70,
              //         width: (screenWidth * 0.9),
              //         child: TextField(
              //           controller: emailController,
              //           autofocus: false,
              //           obscureText: false,
              //           keyboardType: TextInputType.emailAddress,
              //           decoration: InputDecoration(
              //             prefixIcon: const Icon(Icons.mail_rounded),
              //             prefixIconColor: AppColors.gradiantPurple,
              //             enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.grey.shade800),
              //               borderRadius: BorderRadius.circular(30),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderSide: const BorderSide(
              //                   color: AppColors.gradiantPurple),
              //               borderRadius: BorderRadius.circular(30),
              //             ),
              //             fillColor: Colors.white,
              //             filled: true,
              //             hintText: 'email',
              //             hintStyle: TextStyle(
              //               color: Colors.grey[500],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: (screenHeight * 0.05),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'By clicking, I accept the ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffA7A6A6),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed('/home');
                    },
                    child: const Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.gradiantBlue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (screenHeight * 0.015),
              ),
              //button
              // MyButton(
              //   onTap: () {
              //     if (!phoneController.text.isPhoneNumber) {
              //       _apiService.showErrorDialog(
              //           context, 'Please enter valid number');
              //     } else if (phoneController.text.isEmpty ||
              //         emailController.text.isEmpty) {
              //       _apiService.showErrorDialog(
              //           context, 'please enter both fields');
              //     } else if (!emailController.text.isEmail) {
              //       _apiService.showErrorDialog(
              //           context, 'please enter valid email');
              //     } else {
              //       _apiService.sendOtp(
              //           context, phoneController.text, emailController.text);
              //     }
              //   },
              //   textColor: AppColors.textColorLight,
              //   backgroungColor: AppColors.gradiantBlue,
              //   text: 'Get OTP',
              // ),
              Container(
                height: (screenHeight * 0.06),
                width: (screenWidth * 0.85),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF180662),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OTPScreen()),
                      );
                    },
                    // onPressed: _isLoading ? null : _handleTap,
                    child: _isLoading
                        ? const CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          )
                        : const Text(
                            'SEND OTP',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
              ),
              SizedBox(
                height: (screenHeight * 0.01),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Are you new member? ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffA7A6A6),
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Get.toNamed('/signup');
                    // },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3D0187),
                      ),
                    ),
                  ),
                ],
              ),
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
