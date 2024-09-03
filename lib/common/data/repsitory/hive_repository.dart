import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meruinnovators/common/data/models/auth.dart';
import 'package:meruinnovators/common/data/models/meruinovatorsadapters.dart';
import 'package:meruinnovators/common/utils/env/flavor_config.dart';

@singleton
class HiveRepository {
  Future<void> initBoxes() async {
    await Hive.initFlutter();
    Hive.registerAdapter(Meruinovatorsadapters());
    await Hive.openBox<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox);
  }

  void clearPrefs() {
    Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox)
        .deleteAll(<String>[
      'accesstoken',
      'profile',
      'events',
    ]);
  }

  void clearBox() {
    Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox).clear();
  }

  void persistToken(String token) {
    Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox)
        .put('accessToken', token);
  }

  String? retrieveToken() {
    return Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox)
        .get('accessToken') as String?;
  }

  void persistUser(InnovatorUser user) {
    Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox)
        .put('profile', user);
  }

  InnovatorUser? retrieveUser() {
    return Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox)
        .get('profile') as InnovatorUser?;
  }

  void persistThemeMode(ThemeMode themeMode) {
    Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox)
        .put('themeMode', themeMode.toString());
  }

  ThemeMode retrieveThemeMode() {
    final themeMode =
        Hive.box<dynamic>(MeruInnovatorsConfig.instance!.values.hiveBox)
            .get('themeMode') as String?;

    return ThemeMode.values.firstWhere(
      (element) => element.toString() == themeMode,
      orElse: () => ThemeMode.system,
    );
  }
}
