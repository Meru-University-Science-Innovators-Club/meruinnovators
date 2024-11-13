// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Socials _$SocialsFromJson(Map<String, dynamic> json) {
  return _Socials.fromJson(json);
}

/// @nodoc
mixin _$Socials {
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialsCopyWith<Socials> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialsCopyWith<$Res> {
  factory $SocialsCopyWith(Socials value, $Res Function(Socials) then) =
      _$SocialsCopyWithImpl<$Res, Socials>;
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class _$SocialsCopyWithImpl<$Res, $Val extends Socials>
    implements $SocialsCopyWith<$Res> {
  _$SocialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialsImplCopyWith<$Res> implements $SocialsCopyWith<$Res> {
  factory _$$SocialsImplCopyWith(
          _$SocialsImpl value, $Res Function(_$SocialsImpl) then) =
      __$$SocialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class __$$SocialsImplCopyWithImpl<$Res>
    extends _$SocialsCopyWithImpl<$Res, _$SocialsImpl>
    implements _$$SocialsImplCopyWith<$Res> {
  __$$SocialsImplCopyWithImpl(
      _$SocialsImpl _value, $Res Function(_$SocialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
  }) {
    return _then(_$SocialsImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialsImpl implements _Socials {
  _$SocialsImpl(this.url, this.name);

  factory _$SocialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialsImplFromJson(json);

  @override
  final String url;
  @override
  final String name;

  @override
  String toString() {
    return 'Socials(url: $url, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialsImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialsImplCopyWith<_$SocialsImpl> get copyWith =>
      __$$SocialsImplCopyWithImpl<_$SocialsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialsImplToJson(
      this,
    );
  }
}

abstract class _Socials implements Socials {
  factory _Socials(final String url, final String name) = _$SocialsImpl;

  factory _Socials.fromJson(Map<String, dynamic> json) = _$SocialsImpl.fromJson;

  @override
  String get url;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SocialsImplCopyWith<_$SocialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
