import 'package:flutter/material.dart';
import '../../animation/bottom_animation.dart';
import '../../utils/contact_utils.dart';
import '../../widgets/custom_text_heading.dart';
import '../../widgets/project_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together :)\n\n",
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: height * 0.05,
              children: ContactUtils.contactIcon
                  .asMap()
                  .entries
                  .map((e) => Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.005),
                        child: WidgetAnimator(
                          child: ProjectCard(
                            projectIconData: e.value,
                            projectTitle: ContactUtils.titles[e.key],
                            projectDescription: ContactUtils.details[e.key],
                            projectLink: ContactUtils.links[e.key],
                          ),
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
