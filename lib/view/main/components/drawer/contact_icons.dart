import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                    'https://play.google.com/store/apps/developer?id=MixApplications&hl=en&gl=US'));
              },
              icon: SvgPicture.asset(
                'assets/icons/playstore.svg',
                width: 24,
                height: 24,
              )),
          IconButton(
              onPressed: () {
                launchUrl(
                    Uri.parse('https://www.facebook.com/islam.s.darwish'));
              },
              icon: SvgPicture.asset('assets/icons/facebook.svg',
                  width: 24, height: 24)),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://twitter.com/Islam_S_Darwish'));
              },
              icon: SvgPicture.asset('assets/icons/twitter.svg',
                  width: 24, height: 24)),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/islam-darwish-a229a295/'));
              },
              icon: SvgPicture.asset('assets/icons/linkedin.svg',
                  width: 24, height: 24)),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/Islam-Darwish'));
              },
              icon: SvgPicture.asset('assets/icons/github.svg',
                  width: 24, height: 24)),
          const Spacer(),
        ],
      ),
    );
  }
}
