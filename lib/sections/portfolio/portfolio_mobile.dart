import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../utils/project_utils.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_text_heading.dart';
import '../../widgets/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nPortfolio",
        ),
        const CustomSectionSubHeading(
          text: "Here are few samples of my previous work :)\n\n",
        ),
        CarouselSlider.builder(
          itemCount: ProjectUtils.titles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              projectIcon: ProjectUtils.icons[i],
              projectLink: ProjectUtils.links[i],
              projectTitle: ProjectUtils.titles[i],
              projectDescription: ProjectUtils.description[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            viewportFraction: 0.77,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        // Space.y!,
        SizedBox(
          height: height * 0.04,
          width: width * 0.3,
          child: OutlinedButton(
            onPressed: () => openURL(StaticUtils.gitHub),
            child: const Text('See More',
                style: TextStyle(
                    color: Color(0xffC0392B),
                    fontSize: 14,
                    fontFamily: 'Poppins-Bold',
                    fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}
