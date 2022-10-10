import 'package:devfolio/responsive/responsive.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CommunityIconBtn extends StatelessWidget {
  final String icon;
  final String link;
  final double height;

  const CommunityIconBtn({
    Key? key,
    required this.icon,
    required this.link,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context)
              ? MediaQuery.of(context).size.width * 0.015
              : Responsive.isTablet(context)
              ? MediaQuery.of(context).size.width * 0.05 : MediaQuery.of(context).size.width * 0.08),
      child: InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Image.asset(
          icon,
          height: height,
        ),
        onTap: () => openURL(link),
      ),
    );
  }
}
