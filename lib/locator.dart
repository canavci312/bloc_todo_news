import 'package:get_it/get_it.dart';
import 'core/service/dio_service.dart';
import 'product/features/news_listing/service/cache_service/news_cache_service.dart';
import 'product/features/news_listing/service/news_service/news_api_service.dart';
import 'product/features/news_listing/service/news_api_repository.dart';
import 'product/features/todo/service/todo_firebase_service.dart';

// This is our global ServiceLocator
GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerSingleton<IDioHelper>(DioHelper());
  getIt.registerSingleton<NewsService>(NewsServiceImp(getIt<IDioHelper>()));
  getIt.registerSingleton<NewsCacheService>(NewsCacheService("newsCache"));
  getIt.registerSingleton<NewsRepository>(
      NewsRepositoryImp(getIt<NewsService>(), getIt<NewsCacheService>()));
  getIt.registerSingleton<ToDoFirebaseService>(ToDoFirebaseService());
  await getIt<NewsCacheService>().init();
}
