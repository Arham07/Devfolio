import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme/theme_provider.dart';
import '../responsive/responsive.dart';

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
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Align(
      alignment: alignment ?? Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: "$data: ",
                style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ? 13 : 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: themeChanger.isDark ? Colors.white : Colors.black87,
                )),
            TextSpan(
              text: " $information\n",
              style: TextStyle(
                color: themeChanger.isDark ? Colors.white : Colors.black87,
                fontFamily: 'Poppins',
                fontSize: Responsive.isDesktop(context) ? 13 : 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
