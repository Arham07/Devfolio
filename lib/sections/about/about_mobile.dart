import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:devfolio/widgets/community_button.dart';
import '../../constants.dart';
import '../../utils/about_util.dart';
import '../../utils/utils.dart';
import '../../utils/work_util.dart';
import '../../widgets/about_me_data.dart';
import '../../widgets/custom_text_heading.dart';
import '../../widgets/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
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
          Align(
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
          Text(
            AboutUtils.aboutMeHeadline,
            style: TextStyle(
                fontSize: 17,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(AboutUtils.aboutMeDetail,
              style: TextStyle(
                  height: 2,
                  letterSpacing: 1.1,
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: Color(0xff696969))),
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
          Text(
            'Technologies I have worked with:',
            style: TextStyle(
                color: Color(0xffC0392B), fontFamily: 'Poppins', fontSize: 12),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(
            color: Colors.grey[800],
            thickness: 1,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: "Arham Javed",
          ),
          const AboutMeData(
            data: "Email",
            information: "arhamj0726@gmail.com",
          ),
          SizedBox(
            height: height * 0.02,
          ),
          OutlinedButton(
              child: const Text("Resume",style: TextStyle(color:Color(0xffC0392B)),),
              onPressed: () {
                kIsWeb
                    ? html.window.open(StaticUtils.resume, "pdf")
                    : openURL(StaticUtils.resume);
              }),
          SizedBox(
            height: height * 0.02,
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
    );
  }
}
