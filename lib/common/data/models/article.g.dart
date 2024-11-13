// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      json['articleId'] as String,
      json['title'] as String,
      json['content'] as String,
      json['authorName'] as String,
      json['description'] as String,
      json['urlToImage'] as String,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'articleId': instance.articleId,
      'title': instance.title,
      'content': instance.content,
      'authorName': instance.authorName,
      'description': instance.description,
      'urlToImage': instance.urlToImage,
    };
