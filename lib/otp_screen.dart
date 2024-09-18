import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:trustopay/services/api_service.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_view/All%20projects/Colors.dart';
import 'package:search_view/signin_screen.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // ApiService _apiService = ApiService();
  final OtpController = TextEditingController();
  // bool _isLoading = false;

  String phoneNumber = '';
  String otp = '';

  @override
  // void initState() {
  //   super.initState();
  //   final Map<String, dynamic> arguments = Get.arguments;
  //   phoneNumber = arguments['phone'];
  //   otp = arguments['otp'];
  // }

  // Future<void> _handleTap() async {
  //   setState(() {
  //     _isLoading = true;
  //   });

  // try {
  //   if (OtpController.text.isEmpty) {
  //     _apiService.showErrorDialog(context, 'Please enter OTP');
  //   } else if (!OtpController.text.isNumericOnly) {
  //     _apiService.showErrorDialog(
  //         context, 'Please enter a valid numeric OTP');
  //   } else {
  //     await _apiService.verifyOtp(context, phoneNumber, OtpController.text);
  //   }
  // } catch (e) {
  //   // Handle errors if necessary
  //   _apiService.showErrorDialog(
  //       context, 'An error occurred. Please try again.');
  // } finally {
  //   setState(() {
  //     _isLoading = false;
  //   });
  // }
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                'assets/images/otp.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: (screenHeight * 0.025),
            ),
            //heading
            Text(
              'Quick OTP Verification',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(
              height: (screenHeight * 0.02),
            ),
            //textfield
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                    height: (screenHeight * 0.06),
                    width: (screenWidth * 0.85),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: OtpController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
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
                        hintText: otp,
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: (screenHeight * 0.03),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Text(
            //       'By clicking, I accept the ',
            //       style: TextStyle(
            //         fontSize: 15,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0xffC1C1C1),
            //       ),
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         Get.toNamed('/signup');
            //       },
            //       child: const Text(
            //         'Terms & Conditions',
            //         style: TextStyle(
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold,
            //           color: Color(0xff3D0187),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: (screenHeight * 0.015),
            ),
            //button
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
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'VERIFY',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ))
                // _isLoading ? null : _handleTap,
                // child:
                // ),
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
            Spacer(),
          ],
        ),
      ),
    );
  }
}
