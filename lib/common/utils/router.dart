import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:meruinnovators/features/aboutus/aboutus.dart';
import 'package:meruinnovators/features/application/application.dart';
import 'package:meruinnovators/features/auth/ui/otp.dart';
import 'package:meruinnovators/features/auth/ui/signin.dart';
import 'package:meruinnovators/features/auth/ui/signup.dart';
import 'package:meruinnovators/features/blogs/ui/add_blog.dart';
import 'package:meruinnovators/features/blogs/ui/blogs_details.dart';
import 'package:meruinnovators/features/events/ui/event_details.dart';
import 'package:meruinnovators/features/settings/ui/setting.dart';
import 'package:meruinnovators/features/splash/splash.dart';

@singleton
class MUSTRouter {
  static GoRouter get router => _router;

  static const String decisionRoute = '/';
  static const String signInRoute = '/sign-in';
  static const String signUpRoute = '/sign-up';
  static const String otpRoute = '/otp';
  static const String eventsListRoute = '/application';
  static const String applicationRoute = '/application';
  static const String organiserListRoute = 'organisers';
  static const String eventsDetailsRoute = '/events-details';
  static const String autherDetailsRoute = '/auher-details';
  static const String organiserDetailsRoute = '/organiser-details';
  static const String blogDetailsRoute = '/blog-details';
  static const String addBlogRoute = '/add-blog';
  static const String feedbackRoute = '/feedback';
  static const String aboutusRoute = '/aboutus';
  static const String settingsRoute = '/settings';

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
        path: otpRoute,
        name: otpRoute,
        builder: (context, state) => const OtpScreen(),
      ),
      GoRoute(
        path: signUpRoute,
        name: signUpRoute,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: applicationRoute,
        name: applicationRoute,
        builder: (context, state) => const ApplicationScreen(),
      ),
      GoRoute(
        path: settingsRoute,
        name: settingsRoute,
        builder: (context, state) => const SettingsScreen(),
      ),

      GoRoute(
        path: aboutusRoute,
        name: aboutusRoute,
        builder: (context, state) => const AboutusScreen(),
      ),

      GoRoute(
        path: eventsDetailsRoute,
        name: eventsDetailsRoute,
        builder: (context, state) => const EventDetails(),
      ),
      GoRoute(
        path: blogDetailsRoute,
        name: blogDetailsRoute,
        builder: (context, state) => const BlogsDetails(),
      ),

      GoRoute(
        path: addBlogRoute,
        name: addBlogRoute,
        builder: (context, state) => const AddBlogScreen(),
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
