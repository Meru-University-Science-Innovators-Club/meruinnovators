// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'framework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Framework _$FrameworkFromJson(Map<String, dynamic> json) {
  return _Framework.fromJson(json);
}

/// @nodoc
mixin _$Framework {
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrameworkCopyWith<Framework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameworkCopyWith<$Res> {
  factory $FrameworkCopyWith(Framework value, $Res Function(Framework) then) =
      _$FrameworkCopyWithImpl<$Res, Framework>;
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class _$FrameworkCopyWithImpl<$Res, $Val extends Framework>
    implements $FrameworkCopyWith<$Res> {
  _$FrameworkCopyWithImpl(this._value, this._then);

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
abstract class _$$FrameworkImplCopyWith<$Res>
    implements $FrameworkCopyWith<$Res> {
  factory _$$FrameworkImplCopyWith(
          _$FrameworkImpl value, $Res Function(_$FrameworkImpl) then) =
      __$$FrameworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class __$$FrameworkImplCopyWithImpl<$Res>
    extends _$FrameworkCopyWithImpl<$Res, _$FrameworkImpl>
    implements _$$FrameworkImplCopyWith<$Res> {
  __$$FrameworkImplCopyWithImpl(
      _$FrameworkImpl _value, $Res Function(_$FrameworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
  }) {
    return _then(_$FrameworkImpl(
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
class _$FrameworkImpl implements _Framework {
  _$FrameworkImpl(this.url, this.name);

  factory _$FrameworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$FrameworkImplFromJson(json);

  @override
  final String url;
  @override
  final String name;

  @override
  String toString() {
    return 'Framework(url: $url, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameworkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameworkImplCopyWith<_$FrameworkImpl> get copyWith =>
      __$$FrameworkImplCopyWithImpl<_$FrameworkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FrameworkImplToJson(
      this,
    );
  }
}

abstract class _Framework implements Framework {
  factory _Framework(final String url, final String name) = _$FrameworkImpl;

  factory _Framework.fromJson(Map<String, dynamic> json) =
      _$FrameworkImpl.fromJson;

  @override
  String get url;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$FrameworkImplCopyWith<_$FrameworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
