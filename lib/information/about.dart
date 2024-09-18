import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://linktr.ee/trustopay');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

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
          'About us',
          style: TextStyle(
              color: Color(0xFF111111),
              fontSize: 25,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: (screenHeight * 0.32),
              width: (screenWidth * 0.6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/about.png'))),
            ),
          ),
          Center(
            child: Container(
              height: (screenHeight * 0.01),
              width: (screenWidth * 0.9),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/divider.png'))),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.012,
          ),
          Center(
            child: Container(
              width: screenWidth * 0.9,
              child: Text(
                'Trustopay is India\'s leading digital escrow platform, committed to building trust and transparency in online transactions\. We empower businesses and individuals to transact confidently by securely holding payments until all parties are satisfied.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.035,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.05),
            child: Text(
              'Our user-friendly platform offers:',
              style: TextStyle(
                  fontSize: screenWidth * 0.042, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.025,
          ),
          Center(
            child: Container(
              width: screenWidth * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '1.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        'Secure Escrow:',
                        style: TextStyle(
                            fontSize: screenWidth * 0.042,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenHeight * 0.002,
                        right: screenWidth * 0.04,
                        left: screenWidth * 0.04),
                    child: Text(
                      'Protecting buyers and sellers from fraud.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  Row(
                    children: [
                      Text(
                        '2.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        'Rapid Dispute Resolution:',
                        style: TextStyle(
                            fontSize: screenWidth * 0.042,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenHeight * 0.002,
                        right: screenWidth * 0.04,
                        left: screenWidth * 0.04),
                    child: Text(
                      'Ensuring fair and efficient resolutions.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  Row(
                    children: [
                      Text(
                        '3.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        'Project Management Tools:',
                        style: TextStyle(
                            fontSize: screenWidth * 0.042,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenHeight * 0.002,
                        right: screenWidth * 0.04,
                        left: screenWidth * 0.04),
                    child: Text(
                      'Streamlining collaboration for freelancers and agencies.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.9,
                    // height: screenHeight * 0.025,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.035,
                          top: screenHeight * 0.025,
                          right: screenWidth * 0.035),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: _launchUrl,
                            child: Text(
                              'Join our growing community ',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: screenWidth * 0.04,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
