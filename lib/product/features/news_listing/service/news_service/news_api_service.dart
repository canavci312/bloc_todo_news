import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../core/service/dio_service.dart';
import '../../model/article.dart';
import '../../model/news_service_response.dart';
import 'api_failure.dart';

abstract class NewsService {
  final IDioHelper _dioHelper;
  NewsService(
    this._dioHelper,
  );
  Future<Either<ApiFailure, List<Article>>> getAll();
}

class NewsServiceImp extends NewsService {
  NewsServiceImp(IDioHelper _dioHelper) : super(_dioHelper);

  @override
  Future<Either<ApiFailure, List<Article>>> getAll() async {
    try {
      final response = await _dioHelper.dioGet<NewsApiResponse,
              NewsApiResponse>(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=bf104c17d6a1464796e26f4e9b186046',
          parseModel: NewsApiResponse());
      return right(response.articles ?? []);
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 404) {
          return left(const ApiFailure.notFound());
        }
        if (e.response?.statusCode == 401) {
          return left(const ApiFailure.unAuthorized());
        }
        return left(const ApiFailure.unknownError());
      } else {
        return left(const ApiFailure.unknownError());
      }
    }
  }
}
