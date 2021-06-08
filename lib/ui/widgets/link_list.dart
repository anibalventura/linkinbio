import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkinbio/data/models/link_model.dart';
import 'package:linkinbio/utils/texts.dart';
import 'package:linkinbio/utils/utils.dart';

import 'link_button.dart';

class LinksList extends StatelessWidget {
  List<Link> _getLinks(BuildContext context) {
    return [
      Link(
        icon: FontAwesomeIcons.googlePlay,
        title: "Android Apps",
        url:
            'https://play.google.com/store/search?q=pub%3A%20Anibal%20Ventura&c=apps&hl=en',
      ),
      Link(
        icon: FontAwesomeIcons.appStoreIos,
        title: "iOS Apps",
        url: 'https://apps.apple.com/developer/anibal-ventura/id1550794427',
      ),
      Link(
        icon: FontAwesomeIcons.github,
        title: "GitHub",
        url: 'https://github.com/anibalventura',
      ),
      Link(
        icon: FontAwesomeIcons.linkedinIn,
        title: "LinkedIn",
        url: 'https://www.linkedin.com/in/anibalventura/',
      ),
      Link(
        icon: FontAwesomeIcons.suitcase,
        title: translate(context, Texts.portfolio),
        url: 'https://anibalventura.com/',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._getLinks(context).map(
          (link) => LinkButton(
            icon: link.icon,
            title: link.title,
            url: link.url,
          ),
        ),
      ],
    );
  }
}
