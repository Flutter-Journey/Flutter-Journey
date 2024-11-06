import 'package:flutter/material.dart';
import 'package:flutter_journey/core/configs/constants/app_breakpoints.dart';

extension Desktop on BuildContext {
  bool isDesktop(double maxWidth) {
    return maxWidth > AppBreakpoints.tablet;
  }
}
