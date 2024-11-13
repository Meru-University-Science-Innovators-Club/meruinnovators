import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meruinnovators/app.dart';
import 'package:meruinnovators/common/utils/env/flavor_config.dart';
import 'package:meruinnovators/init_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  MeruInnovatorsConfig(
    values: MeruInnovatorsValues(
      urlScheme: 'https',
      baseDomain: 'sv99tncg-8081.uks1.devtunnels.ms',
      hiveBox: 'dev-meruinnov',
    ),
  );
  await const AppBlocObserver().initApp(() => const MainApp());
}
