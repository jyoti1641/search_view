import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
          'Privacy policy',
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
                Text(
                  'At Trustopay, we value your privacy and are committed to protecting your personal information. This Privacy Policy outlines how we collect, use, and safeguard your data when you use our digital escrow platform and associated services.',
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: screenHeight * 0.04),
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
                      'Information We Collect',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Column(
                    children: [
                      Text(
                        'We may collect the following types of information:\n\nPersonal Information: This includes your name, email address, phone number, and any other information you provide during registration or when using our services.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'Financial Information: This includes bank account details, payment card information, and transaction details necessary to process payments and manage escrow accounts.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'Usage Information: This includes data about how you interact with our platform, such as pages visited, features used, and transaction history.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
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
                      'How We Use Your Information',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Column(
                    children: [
                      Text(
                        'We use your information for the following purposes:\n\nProviding and Improving Our Services: To process transactions, manage escrow accounts, resolve disputes, and enhance the user experience.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'Communication: To send you transactional emails, notifications, and updates about our services.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'Security and Fraud Prevention: To protect our platform and users from unauthorized access, fraud, and other illegal activities.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'Legal Compliance: To comply with applicable laws and regulations, including KYC (Know Your Customer) requirements.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
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
                      'How We Protect Your Information',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'We implement industry-standard security measures to protect your information from unauthorized access, disclosure, alteration, or destruction. These measures include encryption, firewalls, and secure data storage.',
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
                      'Sharing Your Information',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Column(
                    children: [
                      Text(
                        'We may share your information with:\n\nTrusted Partners: Third-party service providers who assist us in operating our platform, such as payment processors, KYC verification providers, and dispute resolution partners like Cadre.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'Legal Authorities: As required by law or to protect our legal rights, we may share your information with law enforcement agencies or other government entities.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
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
                      'Fund Storage',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'All funds held in escrow are stored in designated accounts with RBI-licensed banks, ensuring the safety and security of your money.',
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
                    'In the event of a dispute, we may share relevant information with our dispute resolution partner, Cadre, to facilitate a fair and impartial resolution process.',
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
                      'Your Choices',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Column(
                    children: [
                      Text(
                        'You can choose to:\n\nUpdate your information: You can access and update your personal information through your account settings.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'Opt-out of communications: You can unsubscribe from promotional emails by clicking the "unsubscribe" link at the bottom of the email.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
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
                      'Children\'s Privacy',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'Our services are not intended for children under the age of 18. We do not knowingly collect personal information from children.',
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
                      'Changes to This Privacy Policy',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Text(
                    'We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on our website.',
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
                    'If you have any questions or concerns about our Privacy Policy, please contact us at hr@trustopay.com',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenHeight * 0.035,
                      left: 10,
                      right: 10,
                      bottom: screenHeight * 0.02),
                  child: Text(
                    'By using Trustopay\'s platform, you consent to the collection, use, and sharing of your information as described in this Privacy Policy.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
