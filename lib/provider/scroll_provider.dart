import 'package:flutter/cupertino.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index,BuildContext context) {
    index == 0
        ? scrollController.animateTo(
            MediaQuery.of(context).size.height * 0.0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          )
        : null;
  }

  scrollMobile(int index, BuildContext context) {
    index == 0
        ? scrollController.animateTo(
            MediaQuery.of(context).size.height * 0.0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          )
        : index == 1
            ? scrollController.animateTo(
                MediaQuery.of(context).size.height * 1.0,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              )
            : index == 2
                ? scrollController.animateTo(
                    MediaQuery.of(context).size.height * 2.1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  )
                : index == 3
                    ? scrollController.animateTo(
                        MediaQuery.of(context).size.height * 2.8,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      )
                    : scrollController.animateTo(
                        MediaQuery.of(context).size.height * 3.05,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
  }
}
