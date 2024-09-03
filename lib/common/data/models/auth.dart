import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class InnovatorUser with _$InnovatorUser {
  const factory InnovatorUser({
    String? name,
    String? email,
    @JsonKey(name: 'created_at') String? createdAt,
    @Default('https://via.placeholder.com/150') String avatar,
  }) = _InnovatorUser;

  factory InnovatorUser.fromJson(Map<String, Object?> json) =>
      _$InnovatorUserFromJson(json);
}

@freezed
class AuthResult with _$AuthResult {
  const factory AuthResult({
    required String token,
    required InnovatorUser user,
  }) = _AuthResult;

  factory AuthResult.fromJson(Map<String, Object?> json) =>
      _$AuthResultFromJson(json);
}
