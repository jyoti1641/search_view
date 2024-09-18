import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectBank extends StatefulWidget {
  const SelectBank({super.key});

  @override
  State<SelectBank> createState() => _SelectBankState();
}

class _SelectBankState extends State<SelectBank> {
  int? _selectedBank;
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final List<String> _banks = ['Bank of Baroda', 'State Bank of India'];
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
          'Select bank account',
          style: TextStyle(
              color: Colors.black,
              fontSize: width * 0.06,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Height * 0.05,
            ),
            ..._banks.asMap().entries.map((entry) {
              final index = entry.key;
              final bank = entry.value;
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: Height * 0.07,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff3D0187).withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 0), // Set shadow offset
                        ),
                      ],
                    ),
                    child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: Text(
                        bank,
                        style: TextStyle(
                            fontSize: width * 0.042,
                            fontWeight: FontWeight.w500),
                      ),
                      value: index,
                      groupValue: _selectedBank,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedBank = value;
                        });
                      },
                    ),
                  ),
                ),
              );
            }).toList(),
            SizedBox(
              height: Height * 0.03,
            ),
            Center(
              child: Container(
                  width: width * 0.85,
                  height: Height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 228, 228, 228)),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text('Add your bank account',
                            style: TextStyle(
                                fontSize: width * 0.042,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  )),
            )

            // SizedBox(
            //   height: Height * 0.02,
            // ),
            // Center(
            //   child: Container(
            //     // alignment: Alignment.center,
            //     height: Height * 0.07,
            //     width: width * 0.85,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(10),
            //       // border: Border.all(color: Colors.grey),
            //       boxShadow: [
            //         BoxShadow(
            //           color: const Color(0xff3D0187).withOpacity(0.1),
            //           spreadRadius: 1,
            //           blurRadius: 3,
            //           offset: const Offset(0, 0), // Set shadow offset
            //         ),
            //       ],
            //     ),
            //     child:
            //   ),
            // ),
          ],
        ),
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
            'Select bank',
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
