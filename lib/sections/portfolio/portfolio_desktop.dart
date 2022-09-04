import 'package:devfolio/provider/theme/core_theme.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils/project_utils.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_text_heading.dart';
import '../../widgets/project_card.dart';


class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nPortfolio",
          ),
          const CustomSectionSubHeading(
            text: "Here are few samples of my previous work :)\n\n",
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: height * 0.05,
            children: ProjectUtils.banners
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                banner: e.value,
                projectIcon: ProjectUtils.icons[e.key],
                projectLink: ProjectUtils.links[e.key],
                projectTitle: ProjectUtils.titles[e.key],
                projectDescription: ProjectUtils.description[e.key],
              ),
            )
                .toList(),
          ),
          SizedBox(height: height*0.07,),
          SizedBox(
            height: height*0.06,
            width: width*0.12,
            // icon theme colors and opacity
            child: OutlinedButton(
              onPressed: () => openURL(StaticUtils.gitHub),
              child: const Text(
                'See More',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
