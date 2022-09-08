import 'package:flutter/material.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.play_arrow,
          color: Color(0xffC0392B),
          size: 14,
        ),
        Text(" $techName ",
            style: const TextStyle(
              fontSize: 13,
              height: 1.2,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ))
      ],
    );
  }
}
