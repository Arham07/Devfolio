import 'package:devfolio/provider/drawer_provider.dart';
import 'package:devfolio/provider/scroll_provider.dart';
import 'package:devfolio/sections/home/home.dart';
import 'package:devfolio/sections/main/main_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arham',
      darkTheme:ThemeData.light(),
      initialRoute: "/",
      routes: {
        "/": (context) => const MainPage(),
      },
    )
    );
  }
}
