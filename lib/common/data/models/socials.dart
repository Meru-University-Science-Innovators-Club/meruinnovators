import 'package:freezed_annotation/freezed_annotation.dart';

part 'socials.freezed.dart';
part 'socials.g.dart';


@freezed
class Socials with _$Socials {
   factory Socials(
    String url,
    String name,
  ) = _Socials;


  factory Socials.fromJson(Map<String, dynamic> json) => _$SocialsFromJson(json);
}