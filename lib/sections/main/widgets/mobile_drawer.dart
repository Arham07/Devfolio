import 'package:devfolio/provider/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../provider/scroll_provider.dart';
import '../../../utils/navbar_utils.dart';
import '../../../utils/utils.dart';
import '../../../widgets/navbar_name_logo.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final themeProvider = Provider.of<ThemeChanger>(context);
    return Drawer(
      child: Material(
        color: themeProvider.isDark ? Colors.grey[900] : Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: NavBarLogo(),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.light_mode,
                  color: Color(0xffC0392B),
                ),
                title: const Text(
                  "Dark Mode",
                ),
                trailing: Switch(
                  inactiveTrackColor: Colors.grey,
                  value: themeProvider.isDark,
                  onChanged: (value) {
                    themeProvider
                        .setTheme(themeProvider.isDark ? ThemeMode.light : ThemeMode.dark);
                  },
                  activeColor: const Color(0xffC0392B),
                ),
              ),
              const Divider(),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: const Color(0xffC0392B),
                        onPressed: () {
                          scrollProvider.scrollMobile(e.key, context);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            color: const Color(0xffC0392B),
                          ),
                          title: Text(
                            e.value,
                            // style: AppText.l1,
                          ),
                        ),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: const Color(0xffC0392B).withAlpha(100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(
                        color: const Color(0xffC0392B),
                      )),
                  onPressed: () => openURL(StaticUtils.resume),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      'RESUME',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
