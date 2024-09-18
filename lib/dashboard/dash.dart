import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:search_view/dashboard/home.dart';
import 'package:search_view/widget/listTile.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

List<ListTiles> transactionList = [
  const ListTiles(
    imagePath: 'assets/images/4.jpg',
    name: 'user4',
    pname: 'API fetching',
    status_color: Colors.amber,
    Status: 'Active',
  ),
  const ListTiles(
    imagePath: 'assets/images/5.jpg',
    name: 'user5',
    pname: 'Stationery designing',
    status_color: Colors.green,
    Status: 'Done',
  ),
  const ListTiles(
    imagePath: 'assets/images/6.jpg',
    name: 'user6',
    pname: 'Social media post design',
    status_color: Colors.red,
    Status: 'Draft',
  ),
  const ListTiles(
    imagePath: 'assets/images/2.jpg',
    name: 'user5',
    pname: '8 page website',
    status_color: Colors.amber,
    Status: 'Active',
  ),
  const ListTiles(
    imagePath: 'assets/images/5.jpg',
    name: 'user6',
    pname: 'Logo Design',
    status_color: Colors.green,
    Status: 'Done',
  ),
  const ListTiles(
    imagePath: 'assets/images/3.jpg',
    name: 'user5',
    pname: 'App development project',
    status_color: Colors.green,
    Status: 'Done',
  ),
];

class _DashState extends State<Dash> {
  int currentIndex = 0;
  late PageController _pageController;
  late Timer _timer;
  late List<Widget> pages;

  // @override
  // void initState() {
  //   super.initState();
  //   _pageController = PageController(initialPage: 0);
  //   _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
  //     if (currentIndex < contents.length - 1) {
  //       currentIndex++;
  //     } else {
  //       currentIndex = 0;
  //     }
  //     _pageController.animateToPage(
  //       currentIndex,
  //       duration: Duration(milliseconds: 350),
  //       curve: Curves.easeIn,
  //     );
  //   });
  // }
  List contents = [1, 2, 3];

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   _timer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffFAF9FE),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    width: screenWidth,
                    height: screenHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffFAF9FE),
                          Color(0xffF7F6FB),
                          Color(0xffFAF9FE),
                          Color(0xffFAF9FE),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffECD0FF),
                          Color(0xffDDAFFC),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.05,
                        left: screenWidth * 0.05,
                        right: screenWidth * 0.05),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back!!',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  // color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Jyoti',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.045,
                                      // color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                Container(
                                    height: screenHeight * 0.02,
                                    width: screenWidth * 0.04,
                                    child: Image.asset('assets/image/hand.png'))
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        // SvgPicture.asset(
                        //   'assets/images/notification.svg',
                        //   height: screenHeight * 0.03,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.025,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: screenHeight * 0.25,
                      autoPlayAnimationDuration: Duration(milliseconds: 1500),
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlay: true,
                      viewportFraction: 0.78,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) => setState(() {
                        currentIndex = index;
                      }),
                    ),
                    items: [
                      1,
                      2,
                      3,
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: screenWidth * 0.87,
                            height: screenHeight * 0.15,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/image/Card.png',
                                  ),
                                  fit: BoxFit.fill),
                            ),
                            child: Row(
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenWidth * 0.075),
                                Container(
                                  width: screenWidth * 0.36,
                                  height: screenHeight * 0.3,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.075),
                                    child: SvgPicture.asset(
                                      'assets/image/first.svg',
                                      // width: screenWidth * 0.06,
                                    ),
                                  ),
                                ),
                                // ),
                                Container(
                                    width: screenWidth * 0.42,
                                    height: screenHeight * 0.16,
                                    child:
                                        Image.asset('assets/image/cbank.png')),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  // Container(
                  //   width: screenWidth * 0.82,
                  //   height: screenHeight * 0.25,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage(
                  //           'assets/image/Card.png',
                  //         ),
                  //         fit: BoxFit.fill),
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Padding(
                  //         padding: EdgeInsets.only(left: screenWidth * 0.075),
                  //         child: Container(
                  //           width: screenWidth * 0.31,
                  //           height: screenHeight * 0.3,
                  //           child: SvgPicture.asset(
                  //             'assets/image/first.svg',
                  //             width: screenWidth * 0.06,
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //           width: screenWidth * 0.43,
                  //           height: screenHeight * 0.16,
                  //           child: Image.asset('assets/image/cbank.png')),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        contents.length, (index) => buildDot(index, context)),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.05, right: screenWidth * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: screenHeight * 0.1,
                              width: screenWidth * 0.42,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 2,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      width: screenWidth * 0.42,
                                      height: screenHeight * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xff232323),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Receivables',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: screenWidth * 0.04),
                                        ),
                                      )),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  Text(
                                    '₹6969.69',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenWidth * 0.045),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        // SizedBox(
                        //   width: screenWidth * 0.06,
                        // ),
                        Column(
                          children: [
                            Container(
                              height: screenHeight * 0.1,
                              width: screenWidth * 0.42,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 2,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      width: screenWidth * 0.42,
                                      height: screenHeight * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xff232323),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Payables',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: screenWidth * 0.04),
                                        ),
                                      )),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  Text(
                                    '₹0.00',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenWidth * 0.045),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.026,
                        left: screenWidth * 0.055,
                        right: screenWidth * 0.055),
                    child: Row(
                      children: [
                        Text(
                          'Contracts',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.05),
                        ),
                        Spacer(),
                        Text('View all')
                      ],
                    ),
                  ),
                  Container(
                    height: (transactionList.length * 100),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: transactionList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: ListTiles(
                                imagePath: transactionList[index].imagePath,
                                name: transactionList[index].name,
                                status_color:
                                    transactionList[index].status_color,
                                Status: transactionList[index].Status,
                                pname: transactionList[index].pname,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: 5, bottom: 20),
      height: screenHeight * 0.005,
      width: currentIndex == index ? screenWidth * 0.1 : screenWidth * 0.01,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? Color(0xFF3D0187)
            : Color.fromARGB(255, 173, 118, 240),
      ),
    );
  }
}
