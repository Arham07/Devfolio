import 'package:devfolio/sections/main/body/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.photo,
          color: Colors.redAccent,
        ),
        actions: const [
          Icon(
            Icons.photo,
            color: Colors.redAccent,
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
          Body(),
          ],
        ),
      ),
    );
  }
}
