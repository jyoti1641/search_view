import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:search_view/All%20projects/Colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return WillPopScope(
        child: DefaultTabController(
          length: 3,
          animationDuration: const Duration(milliseconds: 500),
          initialIndex: 0,
          child: Scaffold(
              // ignore: prefer_const_constructors
              backgroundColor: Color(0xFFF8F8F8),
              appBar: AppBar(
                titleSpacing: 20,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(Icons.arrow_back_rounded),
                ),
                backgroundColor: Colors.transparent,
                title: const Text(
                  'Contracts',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Stack(children: [
                          Padding(
                            padding: EdgeInsets.only(top: Height * 0.04),
                            child: Center(
                              child: Container(
                                height: (Height * 0.137),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColors.black, width: 2)),
                                // width: (width * 0.09),

                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/1.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.56, top: Height * 0.14),
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.gradiantPurple),
                              child: ClipOval(
                                child: Padding(
                                  padding: EdgeInsets.all(width * 0.01),
                                  child: Icon(
                                    Icons.mode_edit,
                                    size: width * 0.05,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                        SizedBox(
                          height: Height * 0.012,
                        ),
                        const Text(
                          'Travis Head',
                          style: TextStyle(
                              color: AppColors.gradiantPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 21),
                        ),
                        const Text(
                          '+91 787876464',
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 157, 157),
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: (Height * 0.035),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        // Rotated card is added first
                        Transform(
                          transform: Matrix4.rotationZ(45 * -0.002),
                          alignment: Alignment.center,
                          child: Container(
                            width: (width * 0.91),
                            height: (Height * 0.23),
                            decoration: BoxDecoration(
                              color: const Color(0xffD7D6D6),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        // Black card is added second, so it appears on top
                        Container(
                          width: (width * 0.88),
                          height: (Height * 0.24),
                          decoration: BoxDecoration(
                            color: AppColors.gradiantPurple,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(Height * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.02),
                                  child: const Text(
                                    'Trusto-Wallet',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: Height * 0.01),
                                  child: const Text(
                                    '₹6969.69',
                                    style: TextStyle(
                                      fontSize: 46,
                                      color: AppColors.background,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: Height * 0.01,
                                      left: Height * 0.01),
                                  child: const Text(
                                    'total balance',
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.07,
                          top: Height * 0.05,
                          right: width * 0.07),
                      child: Container(
                        height: Height * 0.21,
                        child: Column(
                          children: [
                            //total earning
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.grey),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.033,
                                        horizontal: width * 0.06),
                                    child: const Column(
                                      children: [
                                        Text(
                                          'Total Earning',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '₹6969.69',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                //total spent
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.grey),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.033,
                                        horizontal: width * 0.079),
                                    child: const Column(
                                      children: [
                                        Text(
                                          'Total Spent',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '₹0',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 150, 149, 149),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            //Total Projects
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.grey),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.033,
                                        horizontal: width * 0.0525),
                                    child: const Column(
                                      children: [
                                        Text(
                                          'Total Projects',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '₹12',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 150, 149, 149),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                //Active Projects
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.grey),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.033,
                                        horizontal: width * 0.037),
                                    child: const Column(
                                      children: [
                                        Text(
                                          'Active Projects',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '₹2',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 150, 149, 149),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: Height * 0.07,
                      indent: width * 0.05,
                      endIndent: width * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/aboutus.svg'),
                                SizedBox(
                                  width: Height * 0.013,
                                ),
                                const Text(
                                  'About us',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 150, 149, 149),
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: Height * 0.02,
                                  color:
                                      const Color.fromARGB(255, 150, 149, 149),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Height * 0.02,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/privacy.svg'),
                                SizedBox(
                                  width: Height * 0.013,
                                ),
                                const Text(
                                  'Privacy policy',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 150, 149, 149),
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: Height * 0.02,
                                  color:
                                      const Color.fromARGB(255, 150, 149, 149),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Height * 0.02,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/terms.svg'),
                                SizedBox(
                                  width: Height * 0.013,
                                ),
                                const Text(
                                  'Terms and conditions',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 150, 149, 149),
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: Height * 0.02,
                                  color:
                                      const Color.fromARGB(255, 150, 149, 149),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Height * 0.02,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/help.svg'),
                                SizedBox(
                                  width: Height * 0.013,
                                ),
                                const Text(
                                  'Help',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 150, 149, 149),
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: Height * 0.02,
                                  color:
                                      const Color.fromARGB(255, 150, 149, 149),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Height * 0.02,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/logout.svg',
                                  color: AppColors.red,
                                ),
                                SizedBox(
                                  width: Height * 0.013,
                                ),
                                const Text(
                                  'Logout',
                                  style: TextStyle(
                                      color: AppColors.red,
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                              ],
                            ),
                            SizedBox(
                              height: Height * 0.06,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
        onWillPop: () => _onbackbuttonPressed(context));
  }

  _onbackbuttonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Do you want to exit?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => SystemNavigator.pop(),
            child: Text('Yes'),
          ),
        ],
      ),
    );
    return exitApp ?? false;
  }
}
