import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.09,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: screenHeight * 0.012,
                      left: screenHeight * 0.01,
                      bottom: screenHeight * 0.01,
                      top: screenHeight * 0.007),
                  child: Container(
                    height: (screenHeight * 0.04),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/1.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth * 0.01,
          ),
          Flexible(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: screenHeight * 0.0044,
                  child: Transform(
                    transform: Matrix4.rotationZ(45),
                    alignment: Alignment.center,
                    child: Container(
                      height: screenHeight * 0.06,
                      width: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.02,
                          top: screenWidth * 0.015,
                        ),
                        child: const Text(
                          'hi this is the notification that will be displayed.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.02,
                          bottom: screenWidth * 0.015,
                        ),
                        child: const Text(
                          'Date',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
