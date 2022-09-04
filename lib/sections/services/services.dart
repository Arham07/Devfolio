import 'package:devfolio/responsive/responsive.dart';
import 'package:devfolio/sections/services/services_desktop.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/sections/services/services_mobile.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile:  ServiceMobile(),
    tablet: ServiceMobile(),
    desktop: ServiceDesktop(),
   );
  }
}
