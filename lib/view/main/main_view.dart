import 'package:flutter/material.dart';
import '../../res/constants.dart';
import '../../view model/controller.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_bar.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;
  static final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: defaultPadding * 2,
                  )
                : const SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            if (Responsive.isLargeMobile(context))
              const Row(
                children: [Spacer(), NavigationButtonList(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: RichText(
            //     text: TextSpan(
            //       children: [
            //         const TextSpan(
            //           text: 'Created By: ',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         TextSpan(
            //           text: 'Hamad-Anwar',
            //           style: const TextStyle(color: Colors.blue),
            //           recognizer: TapGestureRecognizer()
            //             ..onTap = () {
            //               launchUrl(Uri.parse(
            //                   'https://github.com/Hamad-Anwar/Flutter-Responsive-Portfolio-WebApp'));
            //             },
            //         ),
            //         const TextSpan(
            //           children: [
            //             TextSpan(
            //               text: ', Edited By Me 😅',
            //               style: TextStyle(color: Colors.white),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
