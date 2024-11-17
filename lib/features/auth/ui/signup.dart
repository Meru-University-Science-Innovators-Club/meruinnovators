import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/gestures.dart';
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
import 'package:meruinnovators/features/auth/ui/widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController usernameController =
  TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confPassController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final (isLightMode, colorScheme) = Misc.getTheme(context);
    var isVisible= true;
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.meruLogo,
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          CustomTextField(
                            prefix: const Icon(Icons.person),
                            controller: nameController,
                            maxLines: 1,
                            coloredBorders: true,
                            hint: 'Full names',
                          ),
                          CustomTextField(
                            prefix: const Icon(Icons.account_circle_outlined),
                            controller: usernameController,
                            maxLines: 1,
                            coloredBorders: true,
                            hint: 'username',
                          ),
                          CustomTextField(
                            prefix: const Icon(Icons.lock),
                            controller: passwordController,
                            maxLines: 1,
                            coloredBorders: true,
                            hint: 'Password',
                            isPassword: isVisible,
                            suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: isVisible
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                          ),
                          CustomTextField(
                            prefix: const Icon(Icons.lock),
                            controller: confPassController,
                            maxLines: 1,
                            coloredBorders: true,
                            hint: 'Confirm Password',
                            isPassword: isVisible,
                            suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: isVisible
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text.rich(
                          TextSpan(
                            text: 'You already have an account?  ',
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => GoRouter.of(context)
                                      .goNamed(MUSTRouter.signInRoute),
                                text: 'Sign In here',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      BlocBuilder<GoogleSignInCubit, GoogleSignInState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => const CircularProgressIndicator(),
                            orElse: () => EmailAuthButton(
                              style: AuthButtonStyle(
                                width: double.infinity,
                                buttonColor: colorScheme.primary,
                                textStyle: TextStyle(
                                  color: colorScheme.onSecondary,
                                ),
                              ),
                              themeMode:
                              isLightMode ? ThemeMode.light : ThemeMode.dark,
                              // onPressed: () async => context
                              //     .read<GoogleSignInCubit>()
                              //     .signInWithGoogle(),
                              // onPressed: () => GoRouter.of(context).goNamed(
                              //   MUSTRouter.applicationRoute,
                              // ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(
                        child: Row(
                          children: [
                            Spacer(),
                            Text('OR',),
                            Spacer()
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<GoogleSignInCubit, GoogleSignInState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => const CircularProgressIndicator(),
                            orElse: () => GoogleAuthButton(
                              style: AuthButtonStyle(
                                width: double.infinity,
                                buttonColor: colorScheme.primary,
                                textStyle: TextStyle(
                                  color: colorScheme.onSecondary,
                                ),
                              ),
                              themeMode:
                              isLightMode ? ThemeMode.light : ThemeMode.dark,
                              // onPressed: () async => context
                              //     .read<GoogleSignInCubit>()
                              //     .signInWithGoogle(),
                              onPressed: () => GoRouter.of(context).goNamed(
                                MUSTRouter.applicationRoute,
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      BlocBuilder<GoogleSignInCubit, GoogleSignInState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => const CircularProgressIndicator(),
                            orElse: () => GithubAuthButton(
                              style: AuthButtonStyle(
                                width: double.infinity,
                                buttonColor: colorScheme.primary,
                                textStyle: TextStyle(
                                  color: colorScheme.onSecondary,
                                ),
                              ),
                              themeMode:
                              isLightMode ? ThemeMode.light : ThemeMode.dark,
                              // onPressed: () async => context
                              //     .read<GoogleSignInCubit>()
                              //     .signInWithGoogle(),
                              // onPressed: () => GoRouter.of(context).goNamed(
                              //   MUSTRouter.applicationRoute,
                              // ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
