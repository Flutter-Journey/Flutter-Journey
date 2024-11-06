import 'package:flutter/material.dart';
import 'package:flutter_journey/core/configs/theme/app_text_theme.dart';
import 'package:flutter_journey/common/helpers/is_Desktop.dart';
import 'package:flutter_journey/core/configs/theme/app_colors.dart';
import 'package:flutter_journey/core/configs/theme/app_theme.dart';
import 'package:flutter_journey/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final ThemeMode mode = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textTheme = context.isDesktop(constraints.maxWidth) ? DesktopTextTheme() : MobileTextTheme();
        return MaterialApp(
          title: 'Flutter Journey',
          debugShowCheckedModeBanner: false,
          themeMode: mode,
          theme: AppTheme.lightTheme.copyWith(
            textTheme: TextTheme(
              displayLarge: textTheme.h1,
              displayMedium: textTheme.h2,
              displaySmall: textTheme.h3,
              headlineMedium: textTheme.h4,
              headlineSmall: textTheme.h5,
              titleLarge: textTheme.h6,
              titleMedium: textTheme.subtitle1,
              titleSmall: textTheme.subtitle2,
              bodyLarge: textTheme.body,
              labelLarge: textTheme.button,
            ),
            cardColor: AppColors.neutral6,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          darkTheme: AppTheme.darkTheme.copyWith(
            textTheme: TextTheme(
              displayLarge: textTheme.h1,
              displayMedium: textTheme.h2,
              displaySmall: textTheme.h3,
              headlineMedium: textTheme.h4,
              headlineSmall: textTheme.h5,
              titleLarge: textTheme.h6,
              titleMedium: textTheme.subtitle1,
              titleSmall: textTheme.subtitle2,
              bodyLarge: textTheme.body,
              labelLarge: textTheme.button,
            ),
            cardColor: AppColors.neutral6,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
