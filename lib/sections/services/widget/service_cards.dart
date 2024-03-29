import 'package:devfolio/responsive/responsive.dart';
import 'package:devfolio/sections/services/widget/services_back_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/theme/theme_provider.dart';
import '../../../utils/utils.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const ServiceCard({
    Key? key,
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final themeChanger = Provider.of<ThemeChanger>(context);

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          width: Responsive.isDesktop(context)
              ? size.width * 0.22
              : Responsive.isTablet(context)
                  ? size.width * 0.40
                  : size.width * 0.58,
          height: Responsive.isDesktop(context)
              ? size.height * 0.35
              : size.height * 0.28,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: const Color(0xffC0392B).withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: ServiceCardBackWidget(
            serviceDesc: widget.serviceDescription,
            serviceTitle: widget.serviceTitle,
          ),
        ),
        front: Container(
          width: Responsive.isDesktop(context)
              ? size.width * 0.22
              : Responsive.isTablet(context)
              ? size.width * 0.40
              : size.width * 0.58,
          height: Responsive.isDesktop(context)
              ? size.height * 0.35
              : size.height * 0.28,
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: themeChanger.isDark ? Colors.grey.shade900 : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: const Color(0xffC0392B).withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                height: Responsive.isDesktop(context)
                    ? size.height * 0.12
                    : Responsive.isMobile(context)
                        ? size.height * 0.1
                        : size.height * 0.12,
                color: widget.serviceIcon.contains(StaticUtils.openSource) &&
                        !themeChanger.isDark
                    ? Colors.black
                    : null,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                widget.serviceTitle,
                textAlign: TextAlign.center,
                // style: TextStyle(
                //   fontSize: Responsive.isDesktop(context)? 22: null
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
