import 'package:flutter/material.dart';
import 'package:flutter_journey/core/configs/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: AppColors.neutral6,
      child: Center(
        child: Text("Hello"),
      ),
    );
  }
}
