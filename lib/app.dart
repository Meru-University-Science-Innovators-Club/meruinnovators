import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:meruinnovators/common/data/repsitory/hive_repository.dart';
import 'package:meruinnovators/common/utils/router.dart';
import 'package:meruinnovators/core/di/injectable.dart';
import 'package:meruinnovators/core/theme/theme_data.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    Logger().d('....... mainapp .......');
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          themeMode: getIt<HiveRepository>().retrieveThemeMode(),
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          debugShowCheckedModeBanner: false,
          routerConfig: getIt<MUSTRouter>().config(),
        );
      },
    );
  }
}
