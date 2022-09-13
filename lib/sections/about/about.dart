import 'package:devfolio/sections/about/about_desktop.dart';
import 'package:devfolio/sections/about/about_mobile.dart';
import 'package:devfolio/sections/about/about_tab.dart';
import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
