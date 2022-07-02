import 'package:devfolio/sections/home/home_mobile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.transparent,
    //     elevation: 0,
    //     leading:
    //       Icon(Icons.photo,color: Colors.redAccent,)
    //     ,
    //     actions: const [
    //       Icon(Icons.photo,color: Colors.redAccent,)
    //     ],
    //   ),
    //   body: const HomeMobile(),
    // );
    return HomeMobile();
  }
}
