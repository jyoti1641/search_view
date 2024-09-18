import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TandC extends StatelessWidget {
  const TandC({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.05),
            child: const Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Terms and Conditions',
          style: TextStyle(
              color: Color(0xFF111111),
              fontSize: 25,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.04,
              right: screenWidth * 0.03,
              top: screenHeight * 0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '1.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Introduction',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'These Terms and Conditions ("Terms") govern your access to and use of the Trustopay platform, including the website, mobile application, and any related services (collectively referred to as the "Service").',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '2.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Description of Service',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'Trustopay is a technology platform that facilitates escrow services for online transactions. This includes holding funds in escrow, managing project milestones (where applicable), and providing dispute resolution services.\nTrustopay acts as an independent escrow agent and is not a party to any underlying transactions between users.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '3.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'User Eligibility',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'You must be at least 18 years old and have the legal capacity to enter into a binding agreement to use the Service.\nYou must provide accurate and complete information during registration and keep your account information updated.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '4.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Escrow Services',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'When you create a transaction on Trustopay, you agree to the terms of the transaction as well as these Terms.\nTrustopay will hold funds in escrow until both parties fulfill their obligations as outlined in the transaction agreement.\nTrustopay will release funds from escrow upon mutual agreement of both parties or as determined by the dispute resolution process.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '5.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Dispute Resolution',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'In case of a dispute, Trustopay will facilitate a fair and impartial resolution process as outlined in our Dispute Resolution Policy.\nTrustopay\'s decision in a dispute will be final and binding on both parties.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '6.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Platform charges',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'Trustopay charges a fee for its escrow and dispute resolution services. The fee structure is outlined on our website and may be updated from time to time.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '7.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Prohibited Activities',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    ' You may not use the Service for any illegal or unauthorized purpose.\nYou agree not to violate any applicable laws or regulations when using the Service.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '8.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Limitation of Liability',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'Trustopay is not liable for any damages or losses arising from your use of the Service, except for those directly caused by our negligence or willful misconduct.\nTrustopay is not responsible for the quality, safety, legality, or delivery of goods or services transacted through the platform.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '9.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Intellectual Property',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'All content and materials on the Trustopay platform, including the logo, trademarks, and software, are the property of Trustopay and are protected by intellectual property laws.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '10.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Termination',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'Trustopay may terminate or suspend your access to the Service at any time for any reason, including your violation of these Terms.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '11.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Governing Law',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'These Terms are governed by the laws of India.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '12.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Changes to These Terms',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'Trustopay reserves the right to modify these Terms at any time. We will notify you of any changes by posting the new Terms on our website.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      '13.',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Contact Us',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'If you have any questions or concerns about these Terms, please contact us at hr@trustopay.com',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: screenHeight * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
