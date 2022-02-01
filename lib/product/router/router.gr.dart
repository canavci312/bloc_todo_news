// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../features/home/home_screen.dart' as _i2;
import '../features/news_listing/view/article_list_screen.dart' as _i1;
import '../features/todo/view/todo_screen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ArticleListScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ArticleListScreen());
    },
    HomeScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    TodoScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TodoScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(ArticleListScreen.name, path: '/article-list-screen'),
        _i4.RouteConfig(HomeScreen.name, path: '/'),
        _i4.RouteConfig(TodoScreen.name, path: '/todo-screen')
      ];
}

/// generated route for
/// [_i1.ArticleListScreen]
class ArticleListScreen extends _i4.PageRouteInfo<void> {
  const ArticleListScreen()
      : super(ArticleListScreen.name, path: '/article-list-screen');

  static const String name = 'ArticleListScreen';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i4.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i3.TodoScreen]
class TodoScreen extends _i4.PageRouteInfo<void> {
  const TodoScreen() : super(TodoScreen.name, path: '/todo-screen');

  static const String name = 'TodoScreen';
}
