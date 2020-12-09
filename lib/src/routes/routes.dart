import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplications() {
  return routes;
}

//{Map<String, Widget Function(BuildContext)> routes = const <String, WidgetBuilder>{}}
final routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'card': (BuildContext context) => CardPage(),
  'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
  'inputs': (BuildContext context) => InputPage(),
};

// {Route<dynamic> Function(RouteSettings) onGenerateRoute}
MaterialPageRoute<dynamic> Function(RouteSettings) getDefaultRouteApplications() {
  return defaultRoute;
}

final defaultRoute = (RouteSettings settings) =>
    MaterialPageRoute(builder: (BuildContext context) => AlertPage()
);
