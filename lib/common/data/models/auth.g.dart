// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnovatorUserImpl _$$InnovatorUserImplFromJson(Map<String, dynamic> json) =>
    _$InnovatorUserImpl(
      json['id'] as String,
      json['name'] as String,
      json['username'] as String,
      (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      (json['socials'] as List<dynamic>)
          .map((e) => Socials.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['frameworks'] as List<dynamic>)
          .map((e) => Framework.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['role'] as String,
      json['bio'] as String,
      json['accessToken'] as String,
      json['created_at'] as String?,
      photo: json['photo'] as String? ?? 'https://via.placeholder.com/150',
    );

Map<String, dynamic> _$$InnovatorUserImplToJson(_$InnovatorUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'skills': instance.skills,
      'socials': instance.socials,
      'frameworks': instance.frameworks,
      'role': instance.role,
      'bio': instance.bio,
      'accessToken': instance.accessToken,
      'created_at': instance.created_at,
      'photo': instance.photo,
    };

_$AuthResultImpl _$$AuthResultImplFromJson(Map<String, dynamic> json) =>
    _$AuthResultImpl(
      message: json['message'] as String,
      data: InnovatorUser.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResultImplToJson(_$AuthResultImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
