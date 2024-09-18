// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:trustopay/models/Colors.dart';
// import 'package:trustopay/models/user.dart';
// import 'package:trustopay/widgets/my_button.dart';
// import 'package:trustopay/widgets/my_textfield.dart';
import 'package:get/get.dart';
import 'package:search_view/All%20projects/Colors.dart';
// import 'package:http/http.dart' as http;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_view/login_screen.dart';
import 'package:search_view/widget/my_button.dart';
import 'package:search_view/widget/my_textfield.dart';
// import 'package:trustopay/services/api_service.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // final ApiService _apiService = ApiService();
  final usernameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              SizedBox(
                height: (screenHeight * 0.05),
              ),
              //logo
              Container(
                height: (screenHeight * 0.09),
                width: 150,
                child: SvgPicture.asset(
                  'assets/images/tplogo.svg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: (screenHeight * 0.02),
              ),
              //image
              Container(
                height: (screenHeight * 0.25),
                width: (screenWidth * 0.58),
                child: SvgPicture.asset(
                  'assets/images/Sp.svg',
                  fit: BoxFit.fitWidth,
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
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gradiantBlue,
                    ),
                  ),
                  Text(
                    'Please sign up to continue',
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
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     // Padding(
              //     //   padding: EdgeInsets.only(left: 15),
              //     //   child: Text(
              //     //     'Create an ',
              //     //     style: TextStyle(
              //     //       fontSize: 30,
              //     //       fontWeight: FontWeight.bold,
              //     //       color: AppColors.black,
              //     //     ),
              //     //   ),
              //     // ),

              //   ],
              // ),

              //username field
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(left: 25),
              //       child: Text(
              //         'Username',
              //         style: TextStyle(
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.grey.shade700,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 2,
              // ),
              MyTextField(
                controller: usernameController,
                input_icon: null,
                hintText: 'Enter your username',
                obsecure: false,
                type: TextInputType.name,
              ),

              //mobile field
              SizedBox(
                height: (screenHeight * 0.02),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(left: 25),
              //       child: Text(
              //         'Mobile',
              //         style: TextStyle(
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.grey.shade700,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 2,
              // ),
              MyTextField(
                controller: numberController,
                input_icon: null,
                hintText: 'Enter your mobile number',
                obsecure: false,
                type: TextInputType.phone,
              ),

              //email field
              SizedBox(
                height: (screenHeight * 0.02),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(left: 25),
              //       child: Text(
              //         'Email',
              //         style: TextStyle(
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.grey.shade700,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 2,
              // ),
              MyTextField(
                controller: emailController,
                input_icon: null,
                hintText: 'Enter your email',
                obsecure: false,
                type: TextInputType.emailAddress,
              ),

              //password field
              SizedBox(
                height: (screenHeight * 0.02),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(left: 25),
              //       child: Text(
              //         'Password',
              //         style: TextStyle(
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.grey.shade700,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 2,
              ),
              MyTextField(
                controller: passwordController,
                input_icon: null,
                hintText: 'Enter Password',
                obsecure: true,
                type: TextInputType.text,
              ),

              //signup button
              SizedBox(
                height: (screenHeight * 0.02),
              ),
              MyButton(
                // onTap: () async {
                //   // try {
                //   //   if (usernameController.text.isEmpty ||
                //   //       emailController.text.isEmpty ||
                //   //       numberController.text.isEmpty ||
                //   //       passwordController.text.isEmpty) {
                //   //     showSnackbar(context, 'please enter details');
                //   //   } else if (!emailController.text.isEmail) {
                //   //     showSnackbar(context, 'please enter valid email');
                //   //   } else if (passwordController.text.isNumericOnly ||
                //   //       passwordController.text.isAlphabetOnly) {
                //   //     showSnackbar(context, 'please enter Strong password');
                //   //   } else if (!numberController.text.isPhoneNumber) {
                //   //     showSnackbar(context, 'please enter valid phone number');
                //   //   } else {
                //   //     await _apiService.signup(
                //   //       context,
                //   //       emailController.text,
                //   //       usernameController.text,
                //   //       numberController.text,
                //   //       passwordController.text,
                //   //     );
                //   //   }
                //   // } catch (e) {
                //   //   showSnackbar(context, e.toString().split('-').last.trim());
                //   // }
                // },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                textColor: Colors.white,
                // backgroungColor: (emailController.text.isNotEmpty &&
                //         usernameController.text.isNotEmpty &&
                //         numberController.text.isNotEmpty &&
                //         passwordController.text.isNotEmpty)
                //     ? const Color(0xff3D4194)
                //     : Colors.grey.shade300,
                backgroungColor: AppColors.gradiantBlue,
                text: 'Continue',
              ),
              SizedBox(
                height: (screenHeight * 0.02),
              ),

              //arlready a member
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already a member? ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Get.toNamed('/login');
                    // },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'login',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.gradiantBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
