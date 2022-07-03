import 'package:devfolio/sections/main/widgets/mobile_drawer.dart';
import 'package:devfolio/sections/main/widgets/navbar_desktop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:devfolio/sections/main/widgets/body.dart';
import '../../provider/drawer_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
        key: drawerProvider.key,
        extendBodyBehindAppBar: true,
      // drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      drawer:  const MobileDrawer()  ,
      body: SafeArea(
        child: Stack(
          children: [
          Body(),
            NavBarTablet()
          ],
        ),
      ),
    );
  }
}
