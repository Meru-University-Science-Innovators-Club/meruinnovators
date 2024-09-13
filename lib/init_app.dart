import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meruinnovators/common/data/repsitory/db_repository.dart';
import 'package:meruinnovators/common/data/repsitory/hive_repository.dart';
import 'package:meruinnovators/core/di/injectable.dart';
import 'package:meruinnovators/features/auth/cubit/google_signin_cubit.dart';
import 'package:meruinnovators/features/auth/cubit/social_signin_cubit.dart';
import 'package:meruinnovators/firebase_options.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  Future<void> initApp(FutureOr<Widget> Function() builder) async {
    await runZonedGuarded(() async {
      Bloc.observer = const AppBlocObserver();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await configureDependency();

      await getIt<HiveRepository>().initBoxes();

      localDB = await getIt<DBRepository>().init();
      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider<GoogleSignInCubit>(
              create: (context) => GoogleSignInCubit(authRepository: getIt()),
            ),
            BlocProvider<SocialSigninCubit>(
              create: (context) => SocialSigninCubit(
                authRepository: getIt(),
                hiveRepository: getIt(),
              ),
            ),
          ],
          child: await builder(),
        ),
      );
    }, (error, stackTrace) {
      if (kDebugMode) {
        log(error.toString(), stackTrace: stackTrace);
      } else {
        FlutterError.onError = (errorDetails) {
          FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
        };

        PlatformDispatcher.instance.onError = (error, stack) {
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
          return true;
        };
      }
    });
  }
}
