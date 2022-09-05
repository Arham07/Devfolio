import 'package:devfolio/sections/services/widget/service_cards.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../utils/services_utils.dart';
import '../../widgets/custom_text_heading.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(
          text: '\nWhat I can do?',
        ),
        SizedBox(
          height: height * 0.01,
        ),

        const CustomSectionSubHeading(
          text: 'I may not be perfect but surely I\'m of some use :)\n\n',
        ),
        // Space.y!,
        CarouselSlider.builder(
          itemCount: ServicesUtils.servicesTitles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ServiceCard(
              serviceIcon: ServicesUtils.servicesIcons[i],
              serviceTitle: ServicesUtils.servicesTitles[i],
              serviceDescription: ServicesUtils.servicesDescription[i],
              cardHeight: height * 0.035,
              cardWidth:width * 0.62,
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 0.65,
            height: width < 450 ? height * 0.38 : height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
