import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../res/constants.dart';
import '../../view model/controller.dart';
import '../intro/introduction.dart';
import '../main/components/navigation_button_list.dart';
import '../main/main_view.dart';
import '../projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime lastDateTime = DateTime.now();
    int times = 0;
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        if ((details.primaryVelocity ?? 0) < 0) {
          if (pageIndex == 0) {
            if (Introduction.scaffoldKey.currentState != null &&
                Introduction.scaffoldKey.currentState!.isDrawerOpen) {
              Introduction.scaffoldKey.currentState!.closeDrawer();
              return;
            } else if (MainView.scaffoldKey.currentState != null &&
                MainView.scaffoldKey.currentState!.isDrawerOpen) {
              MainView.scaffoldKey.currentState!.closeDrawer();
              return;
            }
          }
          // User swiped Left
          controller.animateToPage(nextPageIndex,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        } else if ((details.primaryVelocity ?? 0) > 0) {
          if (pageIndex == 0 &&
              ((Introduction.scaffoldKey.currentState != null &&
                      !Introduction.scaffoldKey.currentState!.isDrawerOpen) ||
                  ((MainView.scaffoldKey.currentState != null &&
                      !MainView.scaffoldKey.currentState!.isDrawerOpen)))) {
            MainView.scaffoldKey.currentState!.openDrawer();
          } else {
            // User swiped Right
            controller.animateToPage(previusPageIndex,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          }
        }
        if (NavigationButtonList.navigationState != null) {
          NavigationButtonList.navigationState!(() {});
        }
      },
      onVerticalDragEnd: (DragEndDetails details) {
        if ((Introduction.scaffoldKey.currentState != null &&
                Introduction.scaffoldKey.currentState!.isDrawerOpen) ||
            (MainView.scaffoldKey.currentState != null &&
                MainView.scaffoldKey.currentState!.isDrawerOpen)) {
          return;
        }
        if ((details.primaryVelocity ?? 0) > 0) {
          // User swiped Left
          controller.animateToPage(previusPageIndex,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        } else if ((details.primaryVelocity ?? 0) < 0) {
          // User swiped Right
          controller.animateToPage(nextPageIndex,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        }
        if (NavigationButtonList.navigationState != null) {
          NavigationButtonList.navigationState!(() {});
        }
      },
      child: Listener(
        onPointerSignal: (pointerSignal) {
          if ((Introduction.scaffoldKey.currentState != null &&
                  Introduction.scaffoldKey.currentState!.isDrawerOpen) ||
              (MainView.scaffoldKey.currentState != null &&
                  MainView.scaffoldKey.currentState!.isDrawerOpen)) {
            return;
          }
          if (pointerSignal is PointerScrollEvent && atBottom) {
            // do something when scrolled

            if (pointerSignal.scrollDelta.dy > 0) {
              if (lastDateTime.difference(DateTime.now()).inSeconds < 1) {
                times++;
              } else {
                times = 0;
              }
              if (times >= 5) {
                controller.animateToPage(nextPageIndex,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
                times = 0;
              }
            }
          } else if (pointerSignal is PointerScrollEvent && atTop) {
            // do something when scrolled

            if (pointerSignal.scrollDelta.dy < 0) {
              if (lastDateTime.difference(DateTime.now()).inSeconds < 1) {
                times++;
              } else {
                times = 0;
              }
              if (times >= 5) {
                controller.animateToPage(previusPageIndex,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
                times = 0;
              }
            }
          }
          if (NavigationButtonList.navigationState != null) {
            NavigationButtonList.navigationState!(() {});
          }
        },
        child: Container(
          color: bgColor,
          child: SafeArea(
            child: MainView(pages: [
              const Introduction(),
              ProjectsView(),
            ]),
          ),
        ),
      ),
    );
  }
}
