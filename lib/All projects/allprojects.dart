import 'package:flutter/material.dart';
import 'package:search_view/All%20projects/tabs/all.dart';
import 'package:search_view/All%20projects/tabs/buyer.dart';
import 'package:search_view/All%20projects/tabs/seller.dart';

class AllProjects extends StatefulWidget {
  const AllProjects({super.key});

  @override
  State<AllProjects> createState() => _AllProjectsState();
}

class _AllProjectsState extends State<AllProjects> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(milliseconds: 500),
      initialIndex: 0,
      child: Scaffold(
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
          centerTitle: false,
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Buyer',
                ),
                Tab(
                  text: 'Seller',
                ),
              ],
              labelStyle:
                  TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),
              indicatorColor: Color(0xff3D0187),
              labelColor: Colors.black,
              unselectedLabelColor: Color(0xff7D7B7B),
            ),
            Expanded(
              child: TabBarView(
                children: [AllContracts(), BuyerContract(), SellerContract()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
