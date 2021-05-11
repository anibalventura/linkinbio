import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkinbio/utils/localizations.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:linkinbio/ui/widgets/footer.dart';
import 'package:linkinbio/ui/widgets/link_button.dart';

class HomeScreen extends StatelessWidget {
  static String route = '/';

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
                        radius: screenPortrait() ? 50.r : 90.r,
                        backgroundImage:
                            AssetImage("assets/images/home_screen/profile.png"),
                      ),
                      SizedBox(height: 0.01.sh),
                      Text(
                        "Anibal Ventura",
                        style: theme(context).textTheme.headline1!.copyWith(
                              fontSize: screenPortrait() ? 24.sp : 36.sp,
                            ),
                      ),
                      SizedBox(height: 0.002.sh),
                      Text(
                        translate(context, AppText.title),
                        style: theme(context).textTheme.headline2!.copyWith(
                              fontSize: screenPortrait() ? 18.sp : 26.sp,
                            ),
                      ),
                      SizedBox(
                        height: screenPortrait() ? 0.05.sh : 0.08.sh,
                        width: screenPortrait() ? 0.15.sw : 0.1.sw,
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
                        title: translate(context, AppText.portfolio),
                        url: 'https://anibalventura.com/',
                      ),
                      SizedBox(height: 0.1.sh),
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
