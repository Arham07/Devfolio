import 'package:devfolio/responsive/responsive.dart';
import 'package:devfolio/sections/home/home_desktop.dart';
import 'package:devfolio/sections/home/home_mobile.dart';
import 'package:devfolio/sections/home/home_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
