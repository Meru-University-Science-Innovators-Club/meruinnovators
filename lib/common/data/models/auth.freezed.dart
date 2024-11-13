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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  List<Socials> get socials => throw _privateConstructorUsedError;
  List<Framework> get frameworks => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      String username,
      List<String> skills,
      List<Socials> socials,
      List<Framework> frameworks,
      String role,
      String bio,
      String accessToken,
      @JsonKey(name: 'created_at') String? created_at,
      String? photo});
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
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? skills = null,
    Object? socials = null,
    Object? frameworks = null,
    Object? role = null,
    Object? bio = null,
    Object? accessToken = null,
    Object? created_at = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socials: null == socials
          ? _value.socials
          : socials // ignore: cast_nullable_to_non_nullable
              as List<Socials>,
      frameworks: null == frameworks
          ? _value.frameworks
          : frameworks // ignore: cast_nullable_to_non_nullable
              as List<Framework>,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String id,
      String name,
      String username,
      List<String> skills,
      List<Socials> socials,
      List<Framework> frameworks,
      String role,
      String bio,
      String accessToken,
      @JsonKey(name: 'created_at') String? created_at,
      String? photo});
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
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? skills = null,
    Object? socials = null,
    Object? frameworks = null,
    Object? role = null,
    Object? bio = null,
    Object? accessToken = null,
    Object? created_at = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$InnovatorUserImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == socials
          ? _value._socials
          : socials // ignore: cast_nullable_to_non_nullable
              as List<Socials>,
      null == frameworks
          ? _value._frameworks
          : frameworks // ignore: cast_nullable_to_non_nullable
              as List<Framework>,
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnovatorUserImpl implements _InnovatorUser {
  _$InnovatorUserImpl(
      this.id,
      this.name,
      this.username,
      final List<String> skills,
      final List<Socials> socials,
      final List<Framework> frameworks,
      this.role,
      this.bio,
      this.accessToken,
      @JsonKey(name: 'created_at') this.created_at,
      {this.photo = 'https://via.placeholder.com/150'})
      : _skills = skills,
        _socials = socials,
        _frameworks = frameworks;

  factory _$InnovatorUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnovatorUserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String username;
  final List<String> _skills;
  @override
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<Socials> _socials;
  @override
  List<Socials> get socials {
    if (_socials is EqualUnmodifiableListView) return _socials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socials);
  }

  final List<Framework> _frameworks;
  @override
  List<Framework> get frameworks {
    if (_frameworks is EqualUnmodifiableListView) return _frameworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frameworks);
  }

  @override
  final String role;
  @override
  final String bio;
  @override
  final String accessToken;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey()
  final String? photo;

  @override
  String toString() {
    return 'InnovatorUser(id: $id, name: $name, username: $username, skills: $skills, socials: $socials, frameworks: $frameworks, role: $role, bio: $bio, accessToken: $accessToken, created_at: $created_at, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnovatorUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._socials, _socials) &&
            const DeepCollectionEquality()
                .equals(other._frameworks, _frameworks) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      username,
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_socials),
      const DeepCollectionEquality().hash(_frameworks),
      role,
      bio,
      accessToken,
      created_at,
      photo);

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
  factory _InnovatorUser(
      final String id,
      final String name,
      final String username,
      final List<String> skills,
      final List<Socials> socials,
      final List<Framework> frameworks,
      final String role,
      final String bio,
      final String accessToken,
      @JsonKey(name: 'created_at') final String? created_at,
      {final String? photo}) = _$InnovatorUserImpl;

  factory _InnovatorUser.fromJson(Map<String, dynamic> json) =
      _$InnovatorUserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get username;
  @override
  List<String> get skills;
  @override
  List<Socials> get socials;
  @override
  List<Framework> get frameworks;
  @override
  String get role;
  @override
  String get bio;
  @override
  String get accessToken;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  String? get photo;
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
  String get message => throw _privateConstructorUsedError;
  InnovatorUser get data => throw _privateConstructorUsedError;

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
  $Res call({String message, InnovatorUser data});

  $InnovatorUserCopyWith<$Res> get data;
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
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InnovatorUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnovatorUserCopyWith<$Res> get data {
    return $InnovatorUserCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
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
  $Res call({String message, InnovatorUser data});

  @override
  $InnovatorUserCopyWith<$Res> get data;
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
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AuthResultImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InnovatorUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResultImpl implements _AuthResult {
  const _$AuthResultImpl({required this.message, required this.data});

  factory _$AuthResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResultImplFromJson(json);

  @override
  final String message;
  @override
  final InnovatorUser data;

  @override
  String toString() {
    return 'AuthResult(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResultImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

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
      {required final String message,
      required final InnovatorUser data}) = _$AuthResultImpl;

  factory _AuthResult.fromJson(Map<String, dynamic> json) =
      _$AuthResultImpl.fromJson;

  @override
  String get message;
  @override
  InnovatorUser get data;
  @override
  @JsonKey(ignore: true)
  _$$AuthResultImplCopyWith<_$AuthResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
