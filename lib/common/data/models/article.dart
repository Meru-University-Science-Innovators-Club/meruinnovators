import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';


@freezed
class Article with _$Article {
  factory Article(
      String articleId,
      String title,
      String content,
      String authorName,
      String description,
      String urlToImage,
      )=_Article;



  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);
}
