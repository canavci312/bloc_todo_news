import '../../../../core/model/base_model.dart';
import 'article.dart';

class NewsApiResponse extends IBaseModel<NewsApiResponse> {
  String? status;
  int? totalResults;
  List<Article>? articles;

  NewsApiResponse({status, totalResults, articles});

  NewsApiResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Article>[];
      json['articles'].forEach((v) {
        articles!.add(Article.fromJson(v));
      });
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (articles != null) {
      data['articles'] = articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  NewsApiResponse fromJson(Map<String, dynamic> json) {
    return NewsApiResponse.fromJson(json);
  }
}
