import 'package:flutter/material.dart';
import 'package:mixapplications/res/constants.dart';
import 'package:mixapplications/view/main/main_view.dart';

import '../../view model/controller.dart';
import '../../view model/responsive.dart';
import '../main/components/drawer/drawer.dart';
import 'components/intro_body.dart';
import 'components/side_menu_button.dart';
import 'components/social_media_list.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  static final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    atTop = true;
    atBottom = true;
    return Scaffold(
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      drawer: const CustomDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) => Row(
          children: [
            SizedBox(
              width: constraints.maxWidth * 0.1,
              height: constraints.maxHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!Responsive.isLargeMobile(context))
                    SizedBox(
                      width: constraints.maxWidth * 0.08,
                      height: constraints.maxWidth * 0.08,
                      child: MenuButton(
                        onTap: () {
                          if (MainView.scaffoldKey.currentState != null) {
                            MainView.scaffoldKey.currentState!.openDrawer();
                          }
                        },
                      ),
                    ),
                  SizedBox(
                      width: constraints.maxWidth * 0.08,
                      height: constraints.maxHeight -
                          ((constraints.maxWidth * 0.08) +
                              defaultPadding * 4 +
                              constraints.maxWidth * 0.08),
                      child: const SocialMediaIconList()),
                ],
              ),
            ),
            const Expanded(
              child: IntroBody(),
            ),
          ],
        ),
      ),
    );
  }
}
