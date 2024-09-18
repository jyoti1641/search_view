import 'package:flutter/material.dart';

class ProfileSearchCard extends StatelessWidget {
  final String profileImage;
  final String name;
  final String number;
  const ProfileSearchCard(
      {super.key,
      required this.profileImage,
      required this.name,
      required this.number});

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: (Height * 0.1),
      width: (width * 0.9),
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                number,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff656567),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.verified_rounded,
              color: Colors.blue,
              size: 20,
              shadows: [
                Shadow(color: Colors.grey.shade600, offset: Offset(0, 1))
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
