import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_signin_state.freezed.dart';

@freezed
class GoogleSignInState with _$GoogleSignInState {
  const factory GoogleSignInState.initial() = _Initial;
  const factory GoogleSignInState.loaded({
    required String token,
  }) = _Loaded;
  const factory GoogleSignInState.loading() = _Loading;
  const factory GoogleSignInState.error({
    required String message,
  }) = _Error;
}
