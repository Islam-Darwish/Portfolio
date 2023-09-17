import 'package:flutter/material.dart';
import 'package:mixapplications/res/constants.dart';

import '../../view model/controller.dart';
import '../../view model/responsive.dart';
import 'components/intro_body.dart';
import 'components/side_menu_button.dart';
import 'components/social_media_list.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    atTop = true;
    atBottom = true;
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.1,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!Responsive.isLargeMobile(context))
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.08,
                    height: MediaQuery.sizeOf(context).width * 0.08,
                    child: MenuButton(
                      onTap: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.08,
                    height: MediaQuery.sizeOf(context).height -
                        ((MediaQuery.sizeOf(context).width * 0.08) +
                            defaultPadding * 4 +
                            MediaQuery.sizeOf(context).width * 0.08),
                    child: const SocialMediaIconList()),
              ],
            ),
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
