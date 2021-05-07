import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:linkinbio/widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
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
                      radius: screenPortrait() ? 50.r : 80.r,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    SizedBox(height: 0.01.sh),
                    Text(
                      "Anibal Ventura",
                      style: TextStyle(
                        color: theme(context).textTheme.headline1!.color,
                        fontSize: screenPortrait() ? 24.sp : 34.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.pacifico().fontFamily,
                      ),
                    ),
                    SizedBox(height: 0.01.sh),
                    Text(
                      "Software Developer",
                      style: TextStyle(
                        color: theme(context).textTheme.headline1!.color,
                        fontSize: screenPortrait() ? 18.sp : 24.sp,
                        letterSpacing: 0.5.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                      ),
                    ),
                    SizedBox(
                      height: screenPortrait() ? 0.03.sh : 0.05.sh,
                      width: screenPortrait() ? 0.15.sw : 0.1.sw,
                      child: Divider(
                        color: theme(context).textTheme.headline1!.color,
                        thickness: 1,
                      ),
                    ),
                    InfoCard(
                      icon: FontAwesomeIcons.googlePlay,
                      title: "Android Apps",
                      url:
                          'https://play.google.com/store/search?q=pub%3A%20Anibal%20Ventura&c=apps&hl=en',
                    ),
                    InfoCard(
                      icon: FontAwesomeIcons.appStoreIos,
                      title: "iOS Apps",
                      url:
                          'https://apps.apple.com/developer/anibal-ventura/id1550794427',
                    ),
                    InfoCard(
                      icon: FontAwesomeIcons.github,
                      title: "GitHub",
                      url: 'https://github.com/anibalventura',
                    ),
                    InfoCard(
                      icon: FontAwesomeIcons.linkedinIn,
                      title: "LinkedIn",
                      url: 'https://www.linkedin.com/in/anibalventura/',
                    ),
                    InfoCard(
                      icon: FontAwesomeIcons.suitcase,
                      title: "Portfolio",
                      url: 'https://anibalventura.com/',
                    ),
                    SizedBox(height: 0.1.sh),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          color: theme(context).cardColor,
                          padding: EdgeInsets.symmetric(
                              vertical: screenPortrait() ? 0.01.sh : 0.02.sh),
                          child: Text(
                            '© 2021 Anibal Ventura',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
