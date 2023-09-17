import 'package:flutter/material.dart';

import '../../../view model/controller.dart'; 

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final int mPageIndex;

  const NavigationTextButton(
      {super.key,
      required this.onTap,
      required this.mPageIndex,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 5, // Space between underline and text
      ),
      decoration: mPageIndex == pageIndex
          ? const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2.0, // Underline thickness
                ),
              ),
            )
          : null,
      child: TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
