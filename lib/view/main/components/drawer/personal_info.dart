import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+201023665657'),
        AreaInfoText(title: 'Email', text: 'islam.saad2005@gmail.com'),
        AreaInfoText(title: 'Playstore', text: '@MixApplications'),
        AreaInfoText(title: 'Facebook', text: '@islam.s.darwish'),
        AreaInfoText(title: 'Tweeter', text: '@Islam_S_Darwish'),
        AreaInfoText(title: 'LinkedIn', text: '@islam-darwish-a229a295'),
        AreaInfoText(title: 'Github', text: '@Islam-Darwish'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
