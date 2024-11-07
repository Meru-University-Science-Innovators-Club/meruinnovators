import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/common/utils/router.dart';
import 'package:meruinnovators/features/auth/cubit/google_signin_cubit.dart';
import 'package:meruinnovators/features/auth/cubit/google_signin_state.dart';
import 'package:meruinnovators/features/auth/cubit/social_signin_cubit.dart';
import 'package:meruinnovators/features/auth/cubit/social_signin_state.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (isLightMode, colorScheme) = Misc.getTheme(context);
    return BlocListener<GoogleSignInCubit, GoogleSignInState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          },
          loaded: (token) =>
              context.read<SocialSigninCubit>().socialSignIn(token: token),
        );
      },
      child: BlocListener<SocialSigninCubit, SocialSigninState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loaded: () =>
                GoRouter.of(context).goNamed(MUSTRouter.decisionRoute),
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: Scaffold(
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.meruLogo,
                    ),
                    const SizedBox(height: 64),
                    BlocBuilder<GoogleSignInCubit, GoogleSignInState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () => const CircularProgressIndicator(),
                          orElse: () => GoogleAuthButton(
                            themeMode:
                                isLightMode ? ThemeMode.light : ThemeMode.dark,
                            onPressed: () async => context
                                .read<GoogleSignInCubit>()
                                .signInWithGoogle(),
                            // onPressed: () => GoRouter.of(context).goNamed(
                            //   MUSTRouter.applicationRoute,
                            // ),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
