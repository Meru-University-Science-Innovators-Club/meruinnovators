import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:meruinnovators/common/constants/assets_constants..dart';
import 'package:meruinnovators/common/data/repsitory/hive_repository.dart';
import 'package:meruinnovators/common/utils/router.dart';
import 'package:meruinnovators/common/widgets/resolved_image.dart';
import 'package:meruinnovators/core/di/injectable.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _redirectToPage(
    BuildContext context,
    String routeName,
  ) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => GoRouter.of(context).goNamed(routeName),
    );
  }

  // @override
  // void initState() {
  //   Logger().e("splash Screen");
  //   final accessToken = getIt<HiveRepository>().retrieveToken();
  //   Logger().d(' access token $accessToken');

  //   if (accessToken == null) {
  //     Logger().e("splash Screen");
  //     _redirectToPage(
  //       context,
  //       MUSTRouter.signInRoute,
  //     );
  //   } else {
  //     _redirectToPage(
  //       context,
  //       MUSTRouter.applicationRoute,
  //     );
  //   }

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // final (_, colorScheme) = Misc.getTheme(context);
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ResolvedImage(imageUrl: AppAssets.meruLogo),
      ),
    );
  }
}
