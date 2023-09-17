import 'package:flutter/material.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import 'project_link.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              projectList[index].name,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Responsive.isMobile(context)
              ? const SizedBox(
                  height: defaultPadding / 4,
                )
              : const SizedBox(
                  height: defaultPadding,
                ),
          Text(
            projectList[index].description,
            style: const TextStyle(color: Colors.grey, height: 1.5),
            maxLines: constraints.maxWidth > 350
                ? 4
                : (constraints.maxWidth < 270
                    ? constraints.maxWidth < 170
                        ? 1
                        : 2
                    : 3),
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          ProjectLinks(
            index: index,
          ),
          const SizedBox(
            height: defaultPadding / 4,
          ),
        ],
      ),
    );
  }
}
