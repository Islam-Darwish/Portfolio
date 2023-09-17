import 'package:flutter/material.dart';

import '../../../view model/controller.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  static void Function(void Function())? navigationState;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        navigationState = setState;
        return TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: Row(
                children: [
                  NavigationTextButton(
                      mPageIndex: 0,
                      onTap: () {
                        setState(() {
                          pageIndex = 0;
                          controller.animateToPage(0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        });
                      },
                      text: 'Home'),
                  NavigationTextButton(
                      mPageIndex: 1,
                      onTap: () {
                        setState(() {
                          pageIndex = 1;
                          controller.animateToPage(1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        });
                      },
                      text: 'Projects'),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
