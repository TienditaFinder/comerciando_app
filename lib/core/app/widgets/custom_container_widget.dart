import 'package:flutter/material.dart';

class CustomContainerWidget extends Container {
  CustomContainerWidget({
    super.key,
    super.child,
    super.height,
    super.width,
    super.padding = const EdgeInsets.all(16),
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16)),
    BoxShape shape = BoxShape.rectangle,
    Color? color,
  }) : super(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            shape: shape,
            color: color,
          ),
        );
}
