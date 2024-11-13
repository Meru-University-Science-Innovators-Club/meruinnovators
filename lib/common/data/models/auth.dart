import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meruinnovators/common/data/models/framework.dart';
import 'package:meruinnovators/common/data/models/socials.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class InnovatorUser with _$InnovatorUser {
   factory InnovatorUser(
    String id,
    String name,
    String username,
    List<String> skills,
    List<Socials> socials,
    List<Framework> frameworks,
    String role,
    String bio,
    String accessToken,
    @JsonKey(name: 'created_at') String? created_at, {
    @Default('https://via.placeholder.com/150') String? photo,
  }) = _InnovatorUser;

  factory InnovatorUser.fromJson(Map<String, Object?> json) =>
      _$InnovatorUserFromJson(json);
}

@freezed
class AuthResult with _$AuthResult {
  const factory AuthResult({
    required String message,
    required InnovatorUser data,
  }) = _AuthResult;

  factory AuthResult.fromJson(Map<String, Object?> json) =>
      _$AuthResultFromJson(json);
}
