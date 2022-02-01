import 'package:dartz/dartz.dart';
import '../model/article.dart';
import 'cache_service/news_cache_service.dart';
import 'news_service/news_api_service.dart';

import 'news_service/api_failure.dart';

abstract class NewsRepository {
  final NewsService _apiService;
  final NewsCacheService _newsCacheService;
  NewsRepository(this._apiService, this._newsCacheService);
  Future<Either<ApiFailure, List<Article>>> fetch();
}

class NewsRepositoryImp extends NewsRepository {
  NewsRepositoryImp(NewsService apiService, NewsCacheService newsCacheService)
      : super(apiService, newsCacheService);

  @override
  Future<Either<ApiFailure, List<Article>>> fetch() async {
    List<Article> cachedArticles = _newsCacheService.getValues() ?? [];
    if (cachedArticles.isEmpty) {
      var articleOrFail = await _apiService.getAll();
      return articleOrFail.fold((l) => left(l), (r) async {
        await _newsCacheService.addItems(r);
        return right(r);
      });
    }
    return right(cachedArticles);
  }
}
