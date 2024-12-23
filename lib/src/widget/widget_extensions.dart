import 'package:flutter/material.dart';

extension ClickableGestureDetectorExtension on Widget {
  Widget clickable({
    required Function() onTap,
    MouseCursor cursor = SystemMouseCursors.click,
  }) {
    return MouseRegion(
      cursor: cursor,
      child: GestureDetector(
        onTap: onTap,
        child: this,
      ),
    );
  }

  Widget onDoubleTap(VoidCallback? onDoubleTap, {Key? key}) {
    return GestureDetector(
      key: key,
      onDoubleTap: onDoubleTap,
      child: Material(
        color: Colors.transparent,
        child: this,
      ),
    );
  }

  Widget onLongPress(VoidCallback? onLongPress, {Key? key}) {
    return GestureDetector(
      key: key,
      onLongPress: onLongPress,
      child: Material(
        color: Colors.transparent,
        child: this,
      ),
    );
  }

  Widget alignTo(AlignmentGeometry alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget onInkTap(VoidCallback onTap, {Key? key}) {
    return InkWell(
      key: key,
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        child: this,
      ),
    );
  }

  Widget topLeft() => alignTo(Alignment.topLeft);
  Widget topCenter() => alignTo(Alignment.topCenter);
  Widget topRight() => alignTo(Alignment.topRight);
  Widget centerLeft() => alignTo(Alignment.centerLeft);
  Widget center() => alignTo(Alignment.center);
  Widget centerRight() => alignTo(Alignment.centerRight);
  Widget bottomLeft() => alignTo(Alignment.bottomLeft);
  Widget bottomCenter() => alignTo(Alignment.bottomCenter);
  Widget bottomRight() => alignTo(Alignment.bottomRight);

  Widget isAbsorbing(bool isAbsorbing) {
    return AbsorbPointer(absorbing: isAbsorbing, child: this);
  }

  Widget withCircularBorderRadius(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }

  Widget withOpacity(double opacity) {
    return Opacity(
      opacity: opacity,
      child: this,
    );
  }

  Widget rotated(double angle) {
    return Transform.rotate(
      angle: angle,
      child: this,
    );
  }

  Widget scaled(double scale) {
    return Transform.scale(
      scale: scale,
      child: this,
    );
  }

  Widget withTooltip(String message) {
    return Tooltip(
      message: message,
      child: this,
    );
  }

  Widget visibility(bool visible) {
    return Visibility(
      visible: visible,
      child: this,
    );
  }
}
