import 'package:flutter/material.dart';

class AboutMeData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment? alignment;

  const AboutMeData({
    Key? key,
    required this.data,
    required this.information,
    this.alignment,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: alignment ?? Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Colors.black)
            ),
            TextSpan(
              text: " $information\n",
              style: TextStyle(
                  color: Colors.black87, fontFamily: 'Poppins', fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
