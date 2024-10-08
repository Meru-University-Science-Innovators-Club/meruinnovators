// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InnovatorUser _$InnovatorUserFromJson(Map<String, dynamic> json) {
  return _InnovatorUser.fromJson(json);
}

/// @nodoc
mixin _$InnovatorUser {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnovatorUserCopyWith<InnovatorUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnovatorUserCopyWith<$Res> {
  factory $InnovatorUserCopyWith(
          InnovatorUser value, $Res Function(InnovatorUser) then) =
      _$InnovatorUserCopyWithImpl<$Res, InnovatorUser>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      @JsonKey(name: 'created_at') String? createdAt,
      String avatar});
}

/// @nodoc
class _$InnovatorUserCopyWithImpl<$Res, $Val extends InnovatorUser>
    implements $InnovatorUserCopyWith<$Res> {
  _$InnovatorUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnovatorUserImplCopyWith<$Res>
    implements $InnovatorUserCopyWith<$Res> {
  factory _$$InnovatorUserImplCopyWith(
          _$InnovatorUserImpl value, $Res Function(_$InnovatorUserImpl) then) =
      __$$InnovatorUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      @JsonKey(name: 'created_at') String? createdAt,
      String avatar});
}

/// @nodoc
class __$$InnovatorUserImplCopyWithImpl<$Res>
    extends _$InnovatorUserCopyWithImpl<$Res, _$InnovatorUserImpl>
    implements _$$InnovatorUserImplCopyWith<$Res> {
  __$$InnovatorUserImplCopyWithImpl(
      _$InnovatorUserImpl _value, $Res Function(_$InnovatorUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? avatar = null,
  }) {
    return _then(_$InnovatorUserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnovatorUserImpl implements _InnovatorUser {
  const _$InnovatorUserImpl(
      {this.name,
      this.email,
      @JsonKey(name: 'created_at') this.createdAt,
      this.avatar = 'https://via.placeholder.com/150'});

  factory _$InnovatorUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnovatorUserImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey()
  final String avatar;

  @override
  String toString() {
    return 'InnovatorUser(name: $name, email: $email, createdAt: $createdAt, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnovatorUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, createdAt, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnovatorUserImplCopyWith<_$InnovatorUserImpl> get copyWith =>
      __$$InnovatorUserImplCopyWithImpl<_$InnovatorUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnovatorUserImplToJson(
      this,
    );
  }
}

abstract class _InnovatorUser implements InnovatorUser {
  const factory _InnovatorUser(
      {final String? name,
      final String? email,
      @JsonKey(name: 'created_at') final String? createdAt,
      final String avatar}) = _$InnovatorUserImpl;

  factory _InnovatorUser.fromJson(Map<String, dynamic> json) =
      _$InnovatorUserImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$InnovatorUserImplCopyWith<_$InnovatorUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResult _$AuthResultFromJson(Map<String, dynamic> json) {
  return _AuthResult.fromJson(json);
}

/// @nodoc
mixin _$AuthResult {
  String get token => throw _privateConstructorUsedError;
  InnovatorUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResultCopyWith<AuthResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResultCopyWith<$Res> {
  factory $AuthResultCopyWith(
          AuthResult value, $Res Function(AuthResult) then) =
      _$AuthResultCopyWithImpl<$Res, AuthResult>;
  @useResult
  $Res call({String token, InnovatorUser user});

  $InnovatorUserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthResultCopyWithImpl<$Res, $Val extends AuthResult>
    implements $AuthResultCopyWith<$Res> {
  _$AuthResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as InnovatorUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnovatorUserCopyWith<$Res> get user {
    return $InnovatorUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResultImplCopyWith<$Res>
    implements $AuthResultCopyWith<$Res> {
  factory _$$AuthResultImplCopyWith(
          _$AuthResultImpl value, $Res Function(_$AuthResultImpl) then) =
      __$$AuthResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, InnovatorUser user});

  @override
  $InnovatorUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthResultImplCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$AuthResultImpl>
    implements _$$AuthResultImplCopyWith<$Res> {
  __$$AuthResultImplCopyWithImpl(
      _$AuthResultImpl _value, $Res Function(_$AuthResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$AuthResultImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as InnovatorUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResultImpl implements _AuthResult {
  const _$AuthResultImpl({required this.token, required this.user});

  factory _$AuthResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResultImplFromJson(json);

  @override
  final String token;
  @override
  final InnovatorUser user;

  @override
  String toString() {
    return 'AuthResult(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResultImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResultImplCopyWith<_$AuthResultImpl> get copyWith =>
      __$$AuthResultImplCopyWithImpl<_$AuthResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResultImplToJson(
      this,
    );
  }
}

abstract class _AuthResult implements AuthResult {
  const factory _AuthResult(
      {required final String token,
      required final InnovatorUser user}) = _$AuthResultImpl;

  factory _AuthResult.fromJson(Map<String, dynamic> json) =
      _$AuthResultImpl.fromJson;

  @override
  String get token;
  @override
  InnovatorUser get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthResultImplCopyWith<_$AuthResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
