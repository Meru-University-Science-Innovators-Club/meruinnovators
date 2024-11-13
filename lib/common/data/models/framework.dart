import 'package:freezed_annotation/freezed_annotation.dart';

part 'framework.freezed.dart';
part 'framework.g.dart';


@freezed
class Framework with _$Framework {
   factory Framework(
      String url,
      String name,
      ) = _Framework;


  factory Framework.fromJson(Map<String, dynamic> json) => _$FrameworkFromJson(json);
}
