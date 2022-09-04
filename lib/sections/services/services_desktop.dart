import 'package:devfolio/sections/services/widget/service_cards.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/services_utils.dart';
import '../../widgets/custom_text_heading.dart';
//
// class ServiceDesktop extends StatefulWidget {
//   const ServiceDesktop({Key? key}) : super(key: key);
//
//   @override
//   ServiceDesktopState createState() => ServiceDesktopState();
// }
//
// class ServiceDesktopState extends State<ServiceDesktop> {
//   GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//
//     return Container(
//       // padding: Space.hf(4),
//       child: Column(
//         children: [
//           const CustomSectionHeading(
//             text: '\nWhat I can do?',
//           ),
//           const CustomSectionSubHeading(
//             text: 'I may not be perfect but surely I\'m of some use :)\n\n',
//           ),
//           SizedBox(height: height*0.01,),
//           Wrap(
//             spacing: width * 0.05,
//             runSpacing: height * 0.05,
//             alignment: WrapAlignment.center,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             children: ServicesUtils.servicesIcons
//                 .asMap()
//                 .entries
//                 .map(
//                   (e) => ServiceCard(
//                 serviceIcon: ServicesUtils.servicesIcons[e.key],
//                 serviceTitle: ServicesUtils.servicesTitles[e.key],
//                 serviceDescription:
//                 ServicesUtils.servicesDescription[e.key],
//                     // cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
//                     // cardHeight: width < 1200 ? height * 0.37 : height * 0.35,
//               ),
//             )
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }
// }

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(20),
      // color: Colors.blue,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nWhat I can do?',
          ),
          const CustomSectionSubHeading(
            text: 'I may not be perfect but surely I\'m of some use :)\n\n',
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: ServicesUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => ServiceCard(
                    serviceIcon: ServicesUtils.servicesIcons[e.key],
                    serviceTitle: ServicesUtils.servicesTitles[e.key],
                    serviceDescription:
                        ServicesUtils.servicesDescription[e.key],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
