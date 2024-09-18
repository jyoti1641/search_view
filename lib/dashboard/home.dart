import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_view/All%20projects/allprojects.dart';
import 'package:search_view/All%20projects/tabs/all.dart';
import 'package:search_view/dashboard/dash.dart';
import 'package:search_view/information/about.dart';
import 'package:search_view/information/pp.dart';

class HomeScreen extends StatefulWidget {
  int initialIndex;
  HomeScreen({super.key, required this.initialIndex});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currenttab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dash();

  @override
  void initState() {
    super.initState();
    currenttab = widget.initialIndex;
    _selectScreen(widget.initialIndex);
  }

  void _selectScreen(int index) {
    switch (index) {
      case 0:
        currentScreen = Dash();
        break;
      case 1:
        currentScreen = AllContracts();
        break;
      case 2:
        currentScreen = AllProjects();
        break;
      case 3:
        currentScreen = About();
        break;
      case 4:
        currentScreen = PrivacyPolicy();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        height: screenHeight * 0.075,
        width: screenWidth * 0.92,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                setState(
                  () {
                    currentScreen = Dash();
                    widget.initialIndex = 0;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    size: screenHeight * 0.033,
                    color: widget.initialIndex == 0
                        ? Color.fromARGB(255, 198, 127, 246)
                        : Colors.black,
                  ),
                  Visibility(
                    visible: widget.initialIndex == 0,
                    child: Container(
                      height: screenHeight * 0.01,
                      width: screenWidth * 0.01,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 198, 127, 246),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                setState(
                  () {
                    currentScreen = AllContracts();
                    widget.initialIndex = 1;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.people_alt_rounded,
                    size: screenHeight * 0.033,
                    color: widget.initialIndex == 1
                        ? Color(0xffBB58FF)
                        : Colors.black,
                  ),
                  Visibility(
                    visible: widget.initialIndex == 1,
                    child: Container(
                      height: screenHeight * 0.01,
                      width: screenWidth * 0.01,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 198, 127, 246),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                setState(
                  () {
                    currentScreen = AllProjects();
                    widget.initialIndex = 2;
                  },
                );
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.15,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 117, 244),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        size: screenHeight * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //right side navigation
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                setState(
                  () {
                    currentScreen = About();
                    widget.initialIndex = 3;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.swap_vertical_circle_outlined,
                    size: screenHeight * 0.033,
                    color: widget.initialIndex == 3
                        ? Color.fromARGB(255, 198, 127, 246)
                        : Colors.black,
                  ),
                  Visibility(
                    visible: widget.initialIndex == 3,
                    child: Container(
                      height: screenHeight * 0.01,
                      width: screenWidth * 0.01,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 198, 127, 246),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                setState(
                  () {
                    currentScreen = PrivacyPolicy();
                    widget.initialIndex = 4;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_rounded,
                    size: screenHeight * 0.033,
                    color: widget.initialIndex == 4
                        ? Color.fromARGB(255, 198, 127, 246)
                        : Colors.black,
                  ),
                  Visibility(
                    visible: widget.initialIndex == 4,
                    child: Container(
                      height: screenHeight * 0.01,
                      width: screenWidth * 0.01,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 198, 127, 246),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   height: screenHeight * 0.08,
      //   color: Colors.white,
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 6,
      //   child:
      // ),
    );
  }
}
