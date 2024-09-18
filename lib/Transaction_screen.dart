import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_view/widget/profilesearchbar.dart';
import 'package:search_view/widget/search_bar.dart';
import 'package:search_view/widget/transactiontile.dart';

class TransactionScreen extends StatefulWidget {
  TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenstate();
}

List ProfileImage = [
  'assets/avtar/1.jpg',
  'assets/avtar/2.jpg',
  'assets/avtar/3.jpg',
  'assets/avtar/5.jpg',
  'assets/avtar/6.jpg',
  'assets/avtar/7.jpg',
  'assets/avtar/8.jpg',
  'assets/avtar/9.jpg',
  'assets/avtar/10.jpg',
];
List ProfileName = [
  'user1',
  'user2',
  'user3',
  'user5',
  'user6',
  'user5',
  'user8',
  'user6',
  'user5',
];
List Transaction_amount = [
  '150000',
  '500',
  '2500',
  '3000',
  '2200',
  '2400',
  '1600',
  '3200',
  '1000',
];
List Amount_color = [
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.green,
];

List Transaction_date = [
  'June 10, 2024',
  'June 03, 2024',
  'May 28, 2024',
  'May 06, 2024',
  'Apr 30, 2024',
  'Apr 20, 2024',
  'Apr 16, 2024',
  'March 22, 2024',
  'Feb 15, 2024',
];

List Transaction_time = [
  '10:45 AM',
  '11:40 AM',
  '12:30 PM',
  '01:45 PM',
  '08:00 AM',
  '10:00 AM',
  '11:45 AM',
  '09:45 AM',
  '07:05 PM',
];

class _TransactionScreenstate extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        // titleSpacing: 20,
        leading: Icon(Icons.arrow_back_rounded),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Transactions',
          style: TextStyle(
              color: Color(0xFF180662),
              fontSize: 23,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //searchbar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                child: const SearchBarC(
                  hint: 'Search',
                ),
              ),
            ),

            Container(
              height: (ProfileName.length * 100),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: ProfileName.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: TransactionTile(
                          profileImage: ProfileImage[index],
                          name: ProfileName[index],
                          date: Transaction_date[index],
                          amount: Transaction_amount[index],
                          amountColor: Amount_color[index],
                          time: Transaction_time[index],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
