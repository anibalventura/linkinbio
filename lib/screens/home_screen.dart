import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkinbio/widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.r,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                      SizedBox(height: 0.01.sh),
                      Text(
                        "Anibal Ventura",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.pacifico().fontFamily,
                        ),
                      ),
                      SizedBox(height: 0.01.sh),
                      Text(
                        "Software Developer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          letterSpacing: 0.5.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                        width: 0.15.sw,
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      InfoCard(
                        icon: FontAwesomeIcons.googlePlay,
                        title: "Apps on Play Store",
                        url:
                            'https://play.google.com/store/search?q=pub%3A%20Anibal%20Ventura&c=apps&hl=en',
                      ),
                      InfoCard(
                        icon: FontAwesomeIcons.appStore,
                        title: "Apps on Apple Store",
                        url:
                            'https://apps.apple.com/developer/anibal-ventura/id1550794427',
                      ),
                      InfoCard(
                        icon: FontAwesomeIcons.github,
                        title: "GitHub",
                        url: 'https://github.com/anibalventura',
                      ),
                      InfoCard(
                        icon: FontAwesomeIcons.suitcase,
                        title: "Portfolio",
                        url: 'https://anibalventura.com/',
                      ),
                      InfoCard(
                        icon: FontAwesomeIcons.linkedinIn,
                        title: "LinkedIn",
                        url: 'https://www.linkedin.com/in/anibalventura/',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 1.sw,
              padding: EdgeInsets.symmetric(vertical: 0.01.sh),
              color: Colors.blueGrey,
              alignment: Alignment.center,
              child: Text('© 2021 Anibal Ventura'),
            ),
          ],
        ),
      ),
    );
  }
}
