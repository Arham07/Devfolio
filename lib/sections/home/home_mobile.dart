import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../animation/entrance_animation.dart';
import '../../utils/utils.dart';
import '../../widgets/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 1.00,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: -50,
              child: Opacity(
                opacity: 0.9,
                child: EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    StaticUtils.blackWhitePhoto,
                    height: size.width>450 ? size.height * 0.60:size.height * 0.45,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                size.width * 0.04,
                size.width * 0.16,
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "HEY THERE! ",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 1),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          StaticUtils.hi,
                          height: size.height * 0.04,
                        ),
                      ),
                    ],
                  ),
                  // Space.y!,
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Arham ",
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Javed",
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.red,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              ' Flutter Developer',
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(fontSize: 22),
                            ),
                            TyperAnimatedText(
                              ' A Gamer',
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(fontSize: 22),
                            ),
                            TyperAnimatedText(
                              ' A friend :)',
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(fontSize: 22),
                            ),
                          ],
                          repeatForever: true,
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const SocialLinks(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
