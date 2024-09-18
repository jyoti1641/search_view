import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String profileImage;
  final String name;
  final String date;
  final String amount;
  final Color amountColor;
  final String time;

  const TransactionTile(
      {super.key,
      required this.profileImage,
      required this.name,
      required this.date,
      required this.time,
      required this.amount,
      required this.amountColor});

  // String getAmountSign(Color color) {
  //   if (color == Colors.green) {
  //     return '+';
  //   } else if (color == Colors.red) {
  //     return '-';
  //   } else {
  //     return ''; // Default case if color is neither green nor red
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: (Height * 0.1),
      width: (width * 0.9),
      // ignore: sort_child_properties_last
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 02,
          ),
          Padding(
            padding: const EdgeInsets.all(08),
            child: Container(
              height: (Height * 0.9),
              child: ClipOval(
                child: Image.asset(
                  profileImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff858585),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  // '${getAmountSign(amountColor)} ₹$amount',
                  '₹$amount',
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                    color: amountColor,
                  ),
                ),
                SizedBox(height: Height * 0.003),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff858585),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
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
    );
  }
}
