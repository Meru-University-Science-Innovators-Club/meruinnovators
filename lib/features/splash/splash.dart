import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/common/data/repsitory/hive_repository.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/common/utils/router.dart';
import 'package:meruinnovators/core/di/injectable.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _bounceAnimation;
  void _redirectToPage(
    BuildContext context,
    String routeName,
  ) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => GoRouter.of(context).goNamed(routeName),
    );
  }

  @override
  void initState() {
    final accessToken = getIt<HiveRepository>().retrieveToken();
    Logger().d(' access token $accessToken');

    if (accessToken == null) {
      _redirectToPage(
        context,
        MUSTRouter.signInRoute,
      );
    } else {
      _redirectToPage(
        context,
        MUSTRouter.applicationRoute,
      );
    }

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _bounceAnimation = Tween<double>(begin: 1, end: 0.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticOut,
      ),
    );

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (_, colorScheme) = Misc.getTheme(context);
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            return Transform.translate(
              offset: Offset(
                0,
                100 * _bounceAnimation.value,
              ),
              child: Transform.scale(
                scale: _bounceAnimation.value,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  width: _animation.value * 200 + 100,
                  height: _animation.value * 200 + 100,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(AppAssets.meruLogo),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
