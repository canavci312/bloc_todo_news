import '../../product/features/news_listing/service/news_service/api_failure.dart';

extension ParseApiFalure on ApiFailure {
  String xBuildError() {
    return when(
        serverError: () => "Server Error",
        unAuthorized: () => "UnAuthorized",
        notFound: () => "Not Found",
        unknownError: () => "Unknown Error");
  }
}
