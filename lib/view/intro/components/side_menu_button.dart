import 'package:flutter/material.dart';
import '../../../res/constants.dart';

class MenuButton extends StatefulWidget {
  final VoidCallback? onTap;
  const MenuButton({super.key, this.onTap});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> with TickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 8.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 1000),
          builder: (context, value, child) {
            return InkWell(
              onTap: widget.onTap,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: defaultPadding * 2.0 * value,
                width: defaultPadding * 2.0 * value,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.pinkAccent.withOpacity(0.5),
                          offset: const Offset(1, 1),
                          blurRadius: _animation.value/2,
                          spreadRadius: _animation.value/2),
                      BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          offset: const Offset(-1, -1),
                          blurRadius: _animation.value/2,
                          spreadRadius: _animation.value/2),
                    ]),
                child: Center(
                    child: ShaderMask(
                  shaderCallback: (bounds) {
                    return const LinearGradient(
                            colors: [Colors.pink, Colors.blue])
                        .createShader(bounds);
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: defaultPadding * 1.2 * value,
                  ),
                )),
              ),
            );
          },
        ),
        const Spacer(
          flex: 5,
        )
      ],
    );
  }
}
