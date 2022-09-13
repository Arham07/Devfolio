import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:devfolio/widgets/community_button.dart';
import '../../constants.dart';
import '../../provider/theme/theme_provider.dart';
import '../../utils/about_util.dart';
import '../../utils/utils.dart';
import '../../utils/work_util.dart';
import '../../widgets/about_me_data.dart';
import '../../widgets/custom_text_heading.dart';
import '../../widgets/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final themeProvider = Provider.of<ThemeChanger>(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Column(
            children: [
              const CustomSectionHeading(
                text: '\nAbout Me',
              ),
              const CustomSectionSubHeading(
                text: 'Get to know me :)',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Image.asset(
                StaticUtils.mobilePhoto,
                height: height * 0.27,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Who am I?",
                  style: TextStyle(
                      color: Color(0xffC0392B),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  AboutUtils.aboutMeHeadline,
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                AboutUtils.aboutMeDetail,
                style: TextStyle(
                    height: 2,
                    letterSpacing: 1.1,
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    color: themeProvider.isDark
                        ? Colors.white
                        : const Color(0xff696969)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Divider(
                color: Colors.grey[800],
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Technologies I have worked with:',
                  style: TextStyle(
                      color: Color(0xffC0392B),
                      fontFamily: 'Poppins',
                      fontSize: 12),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: kTools
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Divider(
                color: Colors.grey[800],
                thickness: height * 0.003,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AboutMeData(
                        data: "Name",
                        information: "Arham Javed",
                      ),
                      AboutMeData(
                        data: "Age",
                        information: "20",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AboutMeData(
                        data: "Email",
                        information: "arhamj0726@gmail.com",
                      ),
                      AboutMeData(
                        data: "From",
                        information: "Karachi, PK",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    height: height * 0.065,
                    width: width * 0.13,
                    child: OutlinedButton(
                      onPressed: () =>
                          html.window.open(StaticUtils.resume, 'pdf'),
                      child: const Text(
                        "Resume",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Container(
                    color: Colors.grey[900]!,
                    width: width * 0.06,
                    height: height * 0.0025,
                  ),
                  Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: WorkUtils.logos
                          .asMap()
                          .entries
                          .map(
                            (e) => CommunityIconBtn(
                              icon: e.value,
                              link: WorkUtils.communityLinks[e.key],
                              height: WorkUtils.communityLogoHeight[e.key],
                            ),
                          )
                          .toList()),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
