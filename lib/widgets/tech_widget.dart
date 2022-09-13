import 'package:flutter/material.dart';

import '../responsive/responsive.dart';

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
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 13.5 : 13,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ))
      ],
    );
  }
}
