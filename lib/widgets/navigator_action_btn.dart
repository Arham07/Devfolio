// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../animation/entrance_animation.dart';
// import '../provider/scroll_provider.dart';
//
// class NavBarActionButton extends StatelessWidget {
//   final String label;
//   final int index;
//   const NavBarActionButton({
//     Key? key,
//     required this.label,
//     required this.index,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final scrollProvider = Provider.of<ScrollProvider>(context);
//     Size size=MediaQuery.of(context).size;
//
//     return EntranceFader(
//       offset: const Offset(0, -10),
//       delay: const Duration(milliseconds: 100),
//       duration: const Duration(milliseconds: 250),
//       child: Container(
//         margin: EdgeInsets.only(left:size.width*0.015,top: size.width*0.015,bottom: size.width*0.015),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         child: MaterialButton(
//           splashColor: Colors.white54,
//           highlightColor: Colors.white54,
//           hoverColor: const Color(0xffC0392B),
//           onPressed: () {
//             scrollProvider.scroll(index,context);
//           },
//           child: Padding(
//             padding: const EdgeInsets.s(8.0),
//             child: Text(
//               label,
//               style: TextStyle(
//                 fontFamily: 'Poppins-Regular'
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
