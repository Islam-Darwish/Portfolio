import 'package:flutter/material.dart';

final PageController controller = PageController();
int pageIndex = 0;
int get nextPageIndex {
  if (pageIndex < 1) {
    pageIndex++;
  }
  return pageIndex;
}

int get previusPageIndex {
  if (pageIndex > 0) {
    pageIndex--;
  }
  return pageIndex;
}

bool atBottom = false;
bool atTop = false;
