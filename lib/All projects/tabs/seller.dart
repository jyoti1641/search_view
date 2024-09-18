import 'package:flutter/material.dart';
import 'package:search_view/All%20projects/transactionCard.dart';
import 'package:search_view/widget/listTile.dart';

// ignore: must_be_immutable
class SellerContract extends StatelessWidget {
  SellerContract({super.key});

  List<TransactionCardData> transactionList = [
    TransactionCardData(
      photo: 'assets/images/1.jpg',
      name: 'user1',
      time: 'Logo design',
      status_color: Colors.amber,
      Status: 'Active',
    ),
    TransactionCardData(
      photo: 'assets/images/2.jpg',
      name: 'user2',
      time: '10 page Website design',
      status_color: Colors.green,
      Status: 'Done',
    ),
    TransactionCardData(
      photo: 'assets/images/3.jpg',
      name: 'user3',
      time: 'Logo Animation',
      status_color: Colors.red,
      Status: 'Draft',
    ),
    TransactionCardData(
      photo: 'assets/images/4.jpg',
      name: 'user4',
      time: 'API fetching',
      status_color: Colors.amber,
      Status: 'Active',
    ),
    TransactionCardData(
      photo: 'assets/images/5.jpg',
      name: 'user5',
      time: 'Stationery designing',
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
