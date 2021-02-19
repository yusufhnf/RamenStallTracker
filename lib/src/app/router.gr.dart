// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/add_screen.dart';
import '../screens/home_screen.dart';
import '../screens/pin_screen.dart';

class Routes {
  static const String homeScreen = '/';
  static const String addScreen = '/add-screen';
  static const String pinScreen = '/pin-screen';
  static const all = <String>{
    homeScreen,
    addScreen,
    pinScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.addScreen, page: AddScreen),
    RouteDef(Routes.pinScreen, page: PinScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    AddScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddScreen(),
        settings: data,
      );
    },
    PinScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PinScreen(),
        settings: data,
      );
    },
  };
}
