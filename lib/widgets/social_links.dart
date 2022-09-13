import 'package:devfolio/provider/theme/core_theme.dart';
import 'package:devfolio/responsive/responsive.dart';
import 'package:devfolio/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../provider/theme/theme_provider.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final themeChanger = Provider.of<ThemeChanger>(context);
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
                splashRadius:
                MediaQuery.of(context).size.width < 650 &&
                    MediaQuery.of(context).size.width >= 350
                    ? size.width * 0.07
                    : MediaQuery.of(context).size.width < 350
                    ? size.width * 0.035
                    :   MediaQuery.of(context).size.width >= 1000 &&
                    MediaQuery.of(context).size.width >= 650
                    ? size.width * 0.025
                    : size.width * 0.03,
                            icon: Image.asset(
                  e.value,
                  color: themeChanger.isDark ? Colors.white : Colors.black,
                  height: MediaQuery.of(context).size.width < 1000 &&
                          MediaQuery.of(context).size.width >= 350
                      ? size.height * 0.2
                      : MediaQuery.of(context).size.width < 350
                          ? size.height * 0.03
                          : MediaQuery.of(context).size.width >= 1000
                              ? size.height * 0.3
                              : size.height * 0.3,
                ),
                iconSize: MediaQuery.of(context).size.width < 1000 &&
                        MediaQuery.of(context).size.width >= 350
                    ? 40
                    : MediaQuery.of(context).size.width < 350
                        ? 28
                        : MediaQuery.of(context).size.width >= 1000
                            ? 40
                            : 40,
                onPressed: () => openURL(
                  StaticUtils.socialLinks[e.key],
                ),
                hoverColor: themeLight.primaryColor,
              ),
            ),
          )
          .toList(),
    );
  }
}
