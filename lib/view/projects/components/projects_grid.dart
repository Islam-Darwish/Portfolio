import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/controller.dart';
import '../../../view model/getx_controllers/projects_controller.dart';
import 'project_info.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});
  final controller = Get.put(ProjectController());
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    atTop = true;
    return Listener(
      onPointerSignal: (pointerSignal) {
        if (pointerSignal is PointerScrollEvent) {
          // do something when scrolled
          if (_controller.position.atEdge) {
            if (_controller.position.pixels == 0 ||
                pointerSignal.scrollDelta.dy < 0) {
              atBottom = false;
              atTop = true;
            } else {
              atBottom = true;
              atTop = false;
            }
          } else {
            atBottom = false;
            atTop = false;
          }
        }
      },
      child: GridView.builder(
        controller: _controller,
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: projectList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, childAspectRatio: ratio),
        itemBuilder: (context, index) {
          return Obx(() => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(
                  vertical: defaultPadding, horizontal: defaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.blue,
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink,
                      offset: const Offset(-2, 0),
                      blurRadius: controller.hovers[index] ? 20 : 10,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: const Offset(2, 0),
                      blurRadius: controller.hovers[index] ? 20 : 10,
                    ),
                  ]),
              child: ProjectStack(index: index)));
        },
      ),
    );
  }
}
