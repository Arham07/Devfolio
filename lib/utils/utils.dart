
import 'package:devfolio/sections/contact/contact.dart';
import 'package:devfolio/sections/home/home.dart';
import 'package:devfolio/widgets/footer.dart';
import 'package:flutter/cupertino.dart';

import '../sections/about/about.dart';
import '../sections/portfolio/portfolio.dart';
import '../sections/services/services.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  // static const String sastaticket = 'assets/work/ned.png';
  static const String university = 'assets/work/ned.png';
  static const String fullterKhi = 'assets/work/flutter_khi.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "assets/social/facebook-new--v2.png",
    "assets/social/instagram.png",
    "assets/social/twitter.png",
    "assets/social/linkedin.png",
    "assets/social/github.png",
    "assets/social/medium.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/ArhamJaved26",
    "https://www.instagram.com/_arham.javed/",
    "https://twitter.com/ArhamJaved07",
    "https://www.linkedin.com/in/arham-javed-9b4107216/",
    "https://github.com/Arham07",
    "https://medium.com/@arhamj0726"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';

  static const String gitHub = 'https://github.com/Arham07';
}

class BodyUtils {
  static List<Widget> views = [
    Home(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer()
  ];
}
