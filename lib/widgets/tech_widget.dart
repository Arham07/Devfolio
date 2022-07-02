import 'package:flutter/material.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.play_arrow,
          color: Color(0xffC0392B).withAlpha(100),
          size: 14,
        ),
        Text(
          " $techName ",
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)
        )
      ],
    );
  }
}
