import 'package:flutter/material.dart';
import 'package:search_view/All%20projects/transactionCard.dart';
import 'package:search_view/widget/listTile.dart';

// ignore: must_be_immutable
class BuyerContract extends StatelessWidget {
  BuyerContract({super.key});
  List<TransactionCardData> transactionList = [
    TransactionCardData(
      photo: 'assets/images/6.jpg',
      name: 'user6',
      time: 'Social media post design',
      status_color: Colors.red,
      Status: 'Draft',
    ),
    TransactionCardData(
      photo: 'assets/images/7.jpg',
      name: 'user5',
      time: '8 page website',
      status_color: Colors.amber,
      Status: 'Active',
    ),
    TransactionCardData(
      photo: 'assets/images/8.jpg',
      name: 'user6',
      time: 'Logo Design',
      status_color: Colors.green,
      Status: 'Done',
    ),
    TransactionCardData(
      photo: 'assets/images/9.jpg',
      name: 'user5',
      time: 'App development project',
      status_color: Colors.green,
      Status: 'Done',
    ),
    TransactionCardData(
      photo: 'assets/images/10.jpg',
      name: 'user6',
      time: 'Logo animation',
      status_color: Colors.green,
      Status: 'Done',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: screenWidth,
              height: (transactionList.length * 100),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: transactionList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                      left: 15,
                      bottom: 5,
                      top: 5,
                    ),
                    child: ListTiles(
                      name: transactionList[index].name,
                      imagePath: transactionList[index].photo,
                      pname: transactionList[index].time,
                      status_color: transactionList[index].status_color,
                      Status: transactionList[index].Status,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: (screenHeight * 0.139),
            ),
          ],
        ),
      ),
    );
  }
}
