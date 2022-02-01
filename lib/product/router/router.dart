import 'package:auto_route/auto_route.dart';
import '../features/home/home_screen.dart';
import '../features/news_listing/view/article_list_screen.dart';
import '../features/todo/view/todo_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ArticleListScreen),
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: TodoScreen)
  ],
)
class $AppRouter {}
