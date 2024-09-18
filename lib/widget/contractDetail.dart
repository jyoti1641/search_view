// ignore_for_file: sized_box_for_whitespace

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:search_view/timeline.dart';

class ContractDetailPage extends StatelessWidget {
  final String Pname;
  final String Bimage;
  final String Bname;
  final String Simage;
  final String Sname;
  final String desc;
  final String amount;

  ContractDetailPage({
    super.key,
    required this.Pname,
    required this.Bimage,
    required this.Bname,
    required this.Simage,
    required this.Sname,
    required this.desc,
    required this.amount,
  });
  final events = [
    TimelineEvent(
        title: 'Payment made to TrustoPay',
        dateTime: DateTime.now().subtract(const Duration(days: 4))),
    TimelineEvent(
        title: 'Seller started working on Project',
        dateTime: DateTime.now().subtract(const Duration(days: 3))),
    TimelineEvent(
        title: 'Seller delivered Project',
        dateTime: DateTime.now().subtract(const Duration(days: 2))),
    TimelineEvent(
        title: 'Buyer confirms delivery',
        dateTime: DateTime.now().subtract(const Duration(days: 1))),
    TimelineEvent(title: 'Payment released', dateTime: DateTime.now()),
  ];

  // getButtonColor(Color color) {
  //   if (buttonText == 'Completed') {
  //     return Colors.green;
  //   } else if (buttonText == 'Active') {
  //     return Colors.amber.shade500;
  //   } else {
  //     return Colors.red; // Default case if color is neither green nor red
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: (Height * 0.4),
      width: (width * 0.3),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromARGB(255, 228, 228, 228)),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Pname,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff180662),
                ),
              ),
              SizedBox(
                height: Height * 0.03,
              ),
              Stack(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: width * 0.15,
                        left: width * 0.12,
                        right: width * 0.12,
                      ),
                      child: DottedLine(
                        dashColor: Colors.grey,
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                        top: width * 0.15,
                        left: width * 0.12,
                        right: width * 0.49,
                      ),
                      child: DottedLine(
                        dashColor: Color(0xff180662),
                      )),

                  //buyer seller profile
                  Row(
                    ///mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Buyer',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: (width * 0.005),
                          ),
                          Container(
                            height: (Height * 0.09),
                            child: ClipOval(
                              child: Image.asset(
                                Bimage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: (width * 0.01),
                          ),
                          Text(
                            Bname,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff180662),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: (Height * 0.02),
                            child: Image.asset(
                              'assets/image/tpLogo.png',
                            ),
                          ),
                          SizedBox(
                            height: (width * 0.03),
                          ),
                          Text(
                            '₹ $amount',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff180662),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Seller',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: (width * 0.005),
                          ),
                          Container(
                            height: (Height * 0.09),
                            child: ClipOval(
                              child: Image.asset(
                                Simage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: (width * 0.01),
                          ),
                          Text(
                            Sname,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff180662),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: (width * 0.055),
              ),
              //discription
              Container(
                height: (Height * 0.15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7D7B7B),
                      ),
                    ),
                    SizedBox(
                      height: (Height * 0.005),
                    ),
                    Flexible(
                      child: Text(
                        desc,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff858585),
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              //timeline
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    height: Height * 0.5,
                    child: Timeline(
                      count: events.length,
                      completedCount: 5,
                      events: events,
                    ),
                  ),
                ],
              ),
              //buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Height * 0.055,
                    width: width * 0.43,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_rounded,
                            color: Colors.white,
                            size: width * 0.05,
                          ),
                          SizedBox(
                            width: (width * 0.015),
                          ),
                          Text(
                            'Open Chat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff180662),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff180662),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                      height: Height * 0.055,
                      width: width * 0.43,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_open_outlined,
                              color: Colors.white,
                              size: width * 0.05,
                            ),
                            SizedBox(
                              width: (width * 0.015),
                            ),
                            Text(
                              'File Dispute',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
