import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  final String imagePath;
  final String name;
  final Color status_color;
  final String Status;
  final String pname;

  const ListTiles({
    super.key,
    required this.name,
    required this.imagePath,
    required this.status_color,
    required this.Status,
    required this.pname,
  });

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: (Height * 0.1),
      width: (width * 0.9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        // border: Border.all(
        //   color: Colors.grey.shade400,
        //   width: 0.5,
        // ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff3D0187).withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 1,
            offset: const Offset(0, 0.5), // Set shadow offset
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(08),
            child: Container(
              height: (Height * 0.07),
              width: width * 0.15,
              child: ClipOval(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 12, bottom: 5),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  pname,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xffC1C1C1),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Container(
              //   height: (Height * 0.01),
              //   decoration: BoxDecoration(
              //       color: Colors.green,
              //       borderRadius: BorderRadius.circular(50)),
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.circle,
                  color: status_color,
                  size: (Height * 0.01),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  Status,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Text(
              //     '',
              //     style: const TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 14,
              //       color: Color(0xffC1C1C1),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
