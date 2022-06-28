import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widgets/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 0.90,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: -50,
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: size.height*0.45,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                size.width * 0.10,
                size.width * 0.12,
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "HEY THERE! ",
                        style:
                            TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Image.asset(
                        StaticUtils.hi,
                        height: size.height*0.04,
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Javed",
                        style: TextStyle(
                          fontSize: 38,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
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
                            ' Gamer',
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
