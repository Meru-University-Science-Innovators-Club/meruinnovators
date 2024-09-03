import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_signin_state.freezed.dart';

@freezed
class SocialSigninState with _$SocialSigninState {
  const factory SocialSigninState.initial() = _Initial;
  const factory SocialSigninState.loaded() = _Loaded;
  const factory SocialSigninState.loading() = _Loading;
  const factory SocialSigninState.error({
    required String message,
  }) = _Error;
}
