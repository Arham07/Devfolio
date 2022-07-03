
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/drawer_provider.dart';
import '../../../utils/navbar_utils.dart';
import '../../../widgets/navbar_name_logo.dart';

// class NavbarDesktop extends StatelessWidget {
//   const NavbarDesktop({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // final appProvider = Provider.of<AppProvider>(context);
//
//     return Container(
//       // padding: Space.all(),
//       color:Colors.white,
//       child: Row(
//         children: [
//           const NavBarLogo(),
//           // Space.xm!,
//           ...NavBarUtils.names.asMap().entries.map(
//                 (e) => NavBarActionButton(
//               label: e.value,
//               index: e.key,
//             ),
//           ),
//           EntranceFader(
//             offset: const Offset(0, -10),
//             delay: const Duration(milliseconds: 100),
//             duration: const Duration(milliseconds: 250),
//             child: MaterialButton(
//               hoverColor: AppTheme.c!.primary!.withAlpha(150),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5.0),
//                 side: BorderSide(
//                   color: AppTheme.c!.primary!,
//                 ),
//               ),
//               onPressed: () {
//                 html.window.open(
//                   StaticUtils.resume,
//                   "pdf",
//                 );
//               },
//               child: Padding(
//                 padding: Space.all(1.25, 0.45),
//                 child: Text(
//                   'RESUME',
//                   style: AppText.l1b,
//                 ),
//               ),
//             ),
//           ),
//           Space.x!,
//           Switch(
//             inactiveTrackColor: Colors.grey,
//             value: appProvider.isDark,
//             onChanged: (value) {
//               appProvider.setTheme(
//                 !value ? ThemeMode.light : ThemeMode.dark,
//               );
//             },
//             activeColor: AppTheme.c!.primary!,
//           ),
//           Space.x!,
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
