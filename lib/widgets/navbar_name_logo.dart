import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "< ",
            style: TextStyle(
               fontSize: 24
            )
        ),
        const Text("Arham",
            style: TextStyle(
              fontFamily: 'Agustina',fontSize: 20,fontWeight: FontWeight.bold
            )),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
            style: const TextStyle(
               fontSize: 24,
            )
        )
      ],
    );
  }
}
