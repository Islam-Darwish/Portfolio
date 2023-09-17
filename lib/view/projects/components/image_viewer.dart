import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return LayoutBuilder(
          builder: (context, constraints) => Center(
            child: Hero(
              tag: 'IMAGEVIEW',
              child: SizedBox(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: Scaffold(
                    backgroundColor: Colors.black,
                    body: Container(
                      color: Colors.white,
                      child: Center(
                          child: PhotoView(imageProvider: AssetImage(image))),
                    )),
              ),
            ),
          ),
        );
      },
    );
  }
}
