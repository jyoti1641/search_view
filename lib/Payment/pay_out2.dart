import 'package:dashed_line/dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Pay_out2 extends StatefulWidget {
  const Pay_out2({super.key});

  @override
  State<Pay_out2> createState() => _Pay_out2State();
}

class _Pay_out2State extends State<Pay_out2> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: Height * 0.05,
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: Height * 0.07,
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
                    offset: const Offset(0, 0), // Set shadow offset
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/Bank.png',
                    height: width * 0.05,
                    width: width * 0.05,
                  ),
                  Text('XXXXXXXXXX1234',
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.w400)),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Container(
                      height: Height * 0.04,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 0.1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          color: Colors.green),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.done,
                          size: width * 0.04,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.085, top: Height * 0.032),
            child: Container(
              // alignment: Alignment.center,
              height: Height * 0.07,
              width: width * 0.55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff3D0187).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 0), // Set shadow offset
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.025,
                  ),
                  Text(
                    'Project Amount: ',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    '₹ 5000',
                    style: TextStyle(
                        fontSize: width * 0.047, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: Height * 0.06,
          ),
          Center(
            child: SizedBox(
              width: width * 0.85,
              child: DashedLine(
                path: Path()
                  ..moveTo(5, 0.1) // start point
                  ..lineTo(100, 0), // end point
                color: Colors.grey,
                dashSpace: width * 0.004,
                dashLength: width * 0.006,
              ),
            ),
          ),
          SizedBox(
            height: Height * 0.04,
          ),
          Center(
            child: Container(
              height: Height * 0.2,
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
                    offset: const Offset(0, 0), // Set shadow offset
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04, vertical: Height * 0.03),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Withdraw Amount: ',
                          style: TextStyle(
                              fontSize: width * 0.04,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          '₹ 5000',
                          style: TextStyle(
                              fontSize: width * 0.047,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Height * 0.005,
                    ),
                    Row(
                      children: [
                        Text(
                          'Platform charge: ',
                          style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600),
                        ),
                        Spacer(),
                        Text(
                          '- 0.5%',
                          style: TextStyle(
                              fontSize: width * 0.047,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Height * 0.017,
                    ),
                    Center(
                      child: SizedBox(
                        width: width * 0.85,
                        child: DashedLine(
                          path: Path()
                            ..moveTo(5, 0.1) // start point
                            ..lineTo(100, 0), // end point
                          color: Colors.grey.withOpacity(0.3),
                          dashSpace: width * 0.004,
                          dashLength: width * 0.01,
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'Total Amount: ',
                          style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600),
                        ),
                        Spacer(),
                        Text(
                          '₹ 4975',
                          style: TextStyle(
                              fontSize: width * 0.047,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Spacer(),
        ],
      ),
      floatingActionButton: Container(
        width: width * 0.85,
        height: Height * 0.06,
        child: FloatingActionButton(
          backgroundColor: Color(0xff3D0187), //change color
          onPressed: () {
            // Your onPressed code here
          },
          child: Text(
            'Withdraw',
            style: TextStyle(
                color: Colors.white,
                fontSize: width * 0.04,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
