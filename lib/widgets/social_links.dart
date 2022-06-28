import 'package:devfolio/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Wrap(
      runSpacing: size.width * 0.02,
      alignment: WrapAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.005),
              child: IconButton(
                highlightColor: Colors.white54,
                splashRadius: size.width * 0.02,
                icon: Image.network(e.value,
                    color: Colors.black, height: size.height * 0.03),
                iconSize: 18,
                onPressed: () => openURL(
                  StaticUtils.socialLinks[e.key],
                ),
                hoverColor: Colors.redAccent,
              ),
            ),
          )
          .toList(),
    );
  }
}
