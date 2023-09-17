import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            launchUrl(Uri.parse(projectList[index].link));
          },
          child: Row(
            children: [
              const Text('Check on PlayStore',
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis),
              IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse(projectList[index].link));
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/playstore.svg',
                    width: 20,
                    height: 20,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
