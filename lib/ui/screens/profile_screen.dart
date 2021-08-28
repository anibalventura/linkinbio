import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkinbio/ui/themes.dart';
import 'package:linkinbio/ui/widgets/adaptive_text.dart';
import 'package:linkinbio/ui/widgets/link_button.dart';
import 'package:linkinbio/ui/widgets/social_button.dart';
import 'package:linkinbio/utils/localizations.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:linkinbio/ui/widgets/page_footer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                        backgroundColor: Colors.grey,
                        radius: isLandscape() ? 71.r : 51.r,
                        child: CircleAvatar(
                          radius: isLandscape() ? 70.r : 50.r,
                          backgroundImage: const AssetImage(
                            'assets/images/profile_screen/profile.png',
                          ),
                        ),
                      ),
                      SizedBox(height: 0.01.sh),
                      AdaptiveText(
                        text: LocaleTr.user,
                        style: theme(context).textTheme.headline1!.copyWith(
                              fontSize: Themes().headlineTextSize1,
                            ),
                      ),
                      SizedBox(height: 0.002.sh),
                      AdaptiveText(
                        text: tr(LocaleTr.title),
                        style: theme(context).textTheme.headline2!.copyWith(
                              fontSize: Themes().headlineTextSize2,
                            ),
                      ),
                      SizedBox(height: 0.015.sh),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SocialButton(
                            label: 'LinkedIn',
                            icon: FontAwesomeIcons.linkedinIn,
                            backgroundColor: Colors.blue,
                            url: 'https://www.linkedin.com/in/anibalventura/',
                          ),
                          SizedBox(width: isLandscape() ? 0.01.sw : 0.03.sw),
                          const SocialButton(
                            icon: FontAwesomeIcons.github,
                            label: 'GitHub',
                            backgroundColor: Colors.black,
                            url: 'https://github.com/anibalventura',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: isLandscape() ? 0.06.sh : 0.05.sh,
                        width: isLandscape() ? 0.05.sw : 0.15.sw,
                        child: Divider(
                          color: theme(context).textTheme.headline1!.color,
                          thickness: 1,
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      LinkButton(
                        icon: FontAwesomeIcons.googlePlay,
                        title: 'Play Store',
                        url:
                            'https://play.google.com/store/search?q=pub%3A%20Anibal%20Ventura&c=apps&hl=en',
                      ),
                      // ignore: prefer_const_constructors
                      LinkButton(
                        icon: FontAwesomeIcons.appStoreIos,
                        title: 'App Store',
                        url:
                            'https://apps.apple.com/developer/anibal-ventura/id1550794427',
                      ),
                      LinkButton(
                        icon: FontAwesomeIcons.suitcase,
                        title: tr(LocaleTr.portfolio),
                        url: 'https://anibalventura.com/',
                      ),
                      SizedBox(height: 0.1.sh),
                      // ignore: prefer_const_constructors
                      PageFooter(),
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
