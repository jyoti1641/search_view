import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatProjectCard extends StatelessWidget {
  final String name;
  final String desc;
  final String amount;
  final String buttonText;
  final Color buttonColor;
  final String duration;

  const ChatProjectCard(
      {super.key,
      required this.name,
      required this.desc,
      required this.amount,
      required this.buttonText,
      required this.buttonColor,
      required this.duration});

  getButtonColor(Color color) {
    if (buttonText == 'Completed') {
      return Colors.green;
    } else if (buttonText == 'Active') {
      return Colors.amber.shade500;
    } else {
      return Colors.red; // Default case if color is neither green nor red
    }
  }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: (Height * 0.305),
      width: (width * 0.52),
      // ignore: sort_child_properties_last
      child: Column(
        children: [
          Container(
            height: (Height * 0.06),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    width: (width * 0.03),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 12,
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xff180662),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: (Height * 0.15),
              child: Column(
                children: [
                  Flexible(
                    child: Text(
                      desc,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff858585),
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: (Height * 0.009),
                  ),
                  Container(
                    height: (Height * 0.05),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              // '${getAmountSign(amountColor)} ₹$amount',
                              'Duration',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 90, 88, 88),
                              ),
                            ),
                            SizedBox(
                              height: (Height * 0.001),
                            ),
                            Text(
                              duration,
                              style: const TextStyle(
                                fontSize: 13.5,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff180662),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          // '${getAmountSign(amountColor)} ₹$amount',
                          '₹$amount',
                          style: TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff180662),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: (width * 0.47),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                buttonText,
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: getButtonColor(buttonColor)),
            ),
          ),
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
