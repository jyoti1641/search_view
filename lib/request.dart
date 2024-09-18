import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Payreq extends StatefulWidget {
  const Payreq({super.key});

  @override
  State<Payreq> createState() => _PayreqState();
}

class _PayreqState extends State<Payreq> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        titleSpacing: 20,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Payment',
          style: TextStyle(
              color: Colors.black,
              fontSize: width * 0.06,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: Height * 0.28,
                width: width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff3D0187).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // Set shadow offset
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      // SvgPicture.asset('assets/svgs/request.svg'),
                      Icon(
                        Icons.access_time,
                        size: 60,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: Height * 0.02,
                      ),
                      Container(
                        child: Text(
                          'The payment request has been send to your Google pay',
                          style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: Height * 0.035,
                      ),
                      Container(
                        child: Text(
                          '*Open your payment app in which the payment request has been sent and complete the payment.',
                          style: TextStyle(
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: Height * 0.05,
          ),
          Column(
            children: [
              Container(
                child: Text(
                  'Done with your payment ?',
                  style: TextStyle(
                      fontSize: width * 0.04, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: Height * 0.002,
              ),
              Container(
                child: Text(
                  'verify below to check the payment status',
                  style: TextStyle(
                      fontSize: width * 0.035, fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(
                height: Height * 0.02,
              ),
              Container(
                  width: (width * 0.85),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Verify',
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
