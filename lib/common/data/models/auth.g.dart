// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnovatorUserImpl _$$InnovatorUserImplFromJson(Map<String, dynamic> json) =>
    _$InnovatorUserImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      createdAt: json['created_at'] as String?,
      avatar: json['avatar'] as String? ?? 'https://via.placeholder.com/150',
    );

Map<String, dynamic> _$$InnovatorUserImplToJson(_$InnovatorUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'created_at': instance.createdAt,
      'avatar': instance.avatar,
    };

_$AuthResultImpl _$$AuthResultImplFromJson(Map<String, dynamic> json) =>
    _$AuthResultImpl(
      token: json['token'] as String,
      user: InnovatorUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResultImplToJson(_$AuthResultImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
