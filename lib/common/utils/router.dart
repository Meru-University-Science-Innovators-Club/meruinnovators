import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:meruinnovators/features/application/application.dart';
import 'package:meruinnovators/features/auth/ui/signin.dart';
import 'package:meruinnovators/features/splash/splash.dart';

@singleton
class MUSTRouter {
  static GoRouter get router => _router;

  static const String decisionRoute = '/';
  static const String signInRoute = '/sign-in';
  static const String eventsListRoute = '/application';
  static const String applicationRoute = '/application';
  static const String organiserListRoute = 'organisers';
  static const String eventsDetailsRoute = '/events-details';
  static const String autherDetailsRoute = '/auher-details';
  static const String organiserDetailsRoute = '/organiser-details';
  static const String feedbackRoute = '/feedback';

  GoRouter config() => router;

  static GlobalKey<NavigatorState> get globalNavigatorKey =>
      GlobalKey<NavigatorState>();

  static final _router = GoRouter(
    initialLocation: decisionRoute,
    navigatorKey: globalNavigatorKey,
    routes: [
      GoRoute(
        path: decisionRoute,
        name: decisionRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: signInRoute,
        name: signInRoute,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: applicationRoute,
        name: applicationRoute,
        builder: (context, state) => const ApplicationScreen(),
      ),

      // GoRoute(
      //   path: organiserDetailsRoute,
      //   name: organiserDetailsRoute,
      //   builder: (context, state) => OranisingTeamMemberDetailsPage(
      //     organiser: state.extra! as LocalIndividualOrganiser,
      //   ),
      // ),
      // GoRoute(
      //   path: feedbackRoute,
      //   name: feedbackRoute,
      //   builder: (context, state) => FeedbackScreen(
      //     sessionSlug: state.extra as String?,
      //   ),
      // ),
    ],
  );
}
