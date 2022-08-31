import 'package:universal_html/html.dart' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../animation/entrance_animation.dart';
import '../../../provider/drawer_provider.dart';
import '../../../utils/navbar_utils.dart';
import '../../../utils/utils.dart';
import '../../../widgets/navbar_name_logo.dart';
import '../../../widgets/navigator_action_btn.dart';
//
// class NavbarDesktop extends StatelessWidget {
//   const NavbarDesktop({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // final appProvider = Provider.of<AppProvider>(context);
//     Size size=MediaQuery.of(context).size;
//
//     return Container(
//       // color:Colors.white,
//       child: Row(
//         children: [
//           const NavBarLogo(),
//           SizedBox(width: size.width*0.35,),
//           ...NavBarUtils.names.asMap().entries.map(
//                 (e) => NavBarActionButton(
//               label: e.value,
//               index: e.key,
//             ),
//           ),
//           SizedBox(width: size.width*0.015,),
//           EntranceFader(
//             offset: const Offset(0, -10),
//             delay: const Duration(milliseconds: 100),
//             duration: const Duration(milliseconds: 250),
//             child: MaterialButton(
//               hoverColor: const Color(0xffC0392B).withAlpha(150),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5.0),
//                 side: BorderSide(
//                   color: const Color(0xffC0392B),
//                 ),
//               ),
//               onPressed: () {
//                 html.window.open(
//                   StaticUtils.resume,
//                   "pdf",
//                 );
//               },
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal:size.width*0.02,vertical: size.height*0.015),
//                 child: Text(
//                   'RESUME',
//                   style: TextStyle(fontFamily: 'Poppins-Regular',
//                    fontSize: 14,fontWeight: FontWeight.bold
//                   ),
//                 ),
//               ),
//             ),
//           ),
//          SizedBox(width: size.width*0.01,),
//           Switch(
//             inactiveTrackColor: Colors.grey,
//             value: true,
//             onChanged: (value) {
//
//             },
//             activeColor: const Color(0xffC0392B),
//           ),
//           // Space.x!,
//         ],
//       ),
//     );
//   }
// }

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    Size size=MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: size.height*0.02,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          const NavBarLogo(),
        ],
      ),
    );
  }
}
