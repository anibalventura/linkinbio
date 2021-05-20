import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                        radius: isPortrait() ? 50.r : 90.r,
                        backgroundImage:
                            const AssetImage("assets/images/home_screen/profile.png"),
                      ),
                      SizedBox(height: 0.01.sh),
                      AdaptiveText(
                        text: "Anibal Ventura",
                        style: theme(context).textTheme.headline1!.copyWith(
                              fontSize: isPortrait() ? 24.sp : 36.sp,
                            ),
                      ),
                      SizedBox(height: 0.002.sh),
                      AdaptiveText(
                        text: translate(context, Texts.title),
                        style: theme(context).textTheme.headline2!.copyWith(
                              fontSize: isPortrait() ? 18.sp : 26.sp,
                            ),
                      ),
                      SizedBox(
                        height: isPortrait() ? 0.05.sh : 0.08.sh,
                        width: isPortrait() ? 0.15.sw : 0.1.sw,
                        child: Divider(
                          color: theme(context).textTheme.headline1!.color,
                          thickness: 1,
                        ),
                      ),
                      const LinkButton(
                        icon: FontAwesomeIcons.googlePlay,
                        title: "Android Apps",
                        url:
                            'https://play.google.com/store/search?q=pub%3A%20Anibal%20Ventura&c=apps&hl=en',
                      ),
                      const LinkButton(
                        icon: FontAwesomeIcons.appStoreIos,
                        title: "iOS Apps",
                        url:
                            'https://apps.apple.com/developer/anibal-ventura/id1550794427',
                      ),
                      const LinkButton(
                        icon: FontAwesomeIcons.github,
                        title: "GitHub",
                        url: 'https://github.com/anibalventura',
                      ),
                      const LinkButton(
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
