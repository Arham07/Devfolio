import 'package:carousel_slider/carousel_slider.dart';
import 'package:devfolio/animation/bottom_animation.dart';
import 'package:flutter/material.dart';
import '../../responsive/responsive.dart';
import '../../utils/contact_utils.dart';
import '../../widgets/custom_text_heading.dart';
import '../../widgets/project_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nGet in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Let's build something together :)\n\n",
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: WidgetAnimator(
              child: ProjectCard(
                projectIconData: ContactUtils.contactIcon[i],
                projectTitle: ContactUtils.titles[i],
                projectDescription: ContactUtils.details[i],
                projectLink: ContactUtils.links[i],
              ),
            ),
          ),
          options: CarouselOptions(
            height:Responsive.isTablet(context)? MediaQuery.of(context).size.height * 0.4: MediaQuery.of(context).size.height * 0.30,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
