import 'package:flutter/material.dart';

///Function to scroll to top of page.
void scroll(ScrollController scrollController, double height) {
  scrollController.animateTo(
    height,
    duration: const Duration(seconds: 1),
    curve: Curves.ease,
  );
}
