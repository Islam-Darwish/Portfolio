import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'social_icon.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/facebook.svg',
            onTap: () => launchUrl(
                Uri.parse('https://www.facebook.com/islam.s.darwish'))),
        SocialMediaIcon(
          icon: 'assets/icons/twitter.svg',
          onTap: () =>
              launchUrl(Uri.parse('https://twitter.com/Islam_S_Darwish')),
        ),
        SocialMediaIcon(
            icon: 'assets/icons/playstore.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://play.google.com/store/apps/developer?id=MixApplications&hl=en&gl=US'))),
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://www.linkedin.com/in/islam-darwish-a229a295/'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse('https://github.com/Islam-Darwish')),
        ),
      ],
    );
  }
}
