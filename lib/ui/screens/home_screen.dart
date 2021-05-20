import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkinbio/ui/themes.dart';
import 'package:linkinbio/ui/widgets/adaptive_text.dart';
import 'package:linkinbio/utils/texts.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:linkinbio/ui/widgets/footer.dart';
import 'package:linkinbio/ui/widgets/link_button.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: constraints.copyWith(
                  minHeight: constraints.maxHeight,
                  maxHeight: double.infinity,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      SizedBox(height: 0.1.sh),
                      CircleAvatar(
                        radius: isLandscape() ? 90.r : 50.r,
                        backgroundImage: const AssetImage(
                            "assets/images/home_screen/profile.png"),
                      ),
                      SizedBox(height: 0.01.sh),
                      AdaptiveText(
                        text: "Anibal Ventura",
                        style: theme(context).textTheme.headline1!.copyWith(
                              fontSize: Themes().headlineTextSize1,
                            ),
                      ),
                      SizedBox(height: 0.002.sh),
                      AdaptiveText(
                        text: translate(context, Texts.title),
                        style: theme(context).textTheme.headline2!.copyWith(
                              fontSize: Themes().headlineTextSize2,
                            ),
                      ),
                      SizedBox(
                        height: isLandscape() ? 0.08.sh : 0.05.sh,
                        width: isLandscape() ? 0.1.sw : 0.15.sw,
                        child: Divider(
                          color: theme(context).textTheme.headline1!.color,
                          thickness: 1,
                        ),
                      ),
                      LinkButton(
                        icon: FontAwesomeIcons.googlePlay,
                        title: "Android Apps",
                        url:
                            'https://play.google.com/store/search?q=pub%3A%20Anibal%20Ventura&c=apps&hl=en',
                      ),
                      LinkButton(
                        icon: FontAwesomeIcons.appStoreIos,
                        title: "iOS Apps",
                        url:
                            'https://apps.apple.com/developer/anibal-ventura/id1550794427',
                      ),
                      LinkButton(
                        icon: FontAwesomeIcons.github,
                        title: "GitHub",
                        url: 'https://github.com/anibalventura',
                      ),
                      LinkButton(
                        icon: FontAwesomeIcons.linkedinIn,
                        title: "LinkedIn",
                        url: 'https://www.linkedin.com/in/anibalventura/',
                      ),
                      LinkButton(
                        icon: FontAwesomeIcons.suitcase,
                        title: translate(context, Texts.portfolio),
                        url: 'https://anibalventura.com/',
                      ),
                      Footer(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
