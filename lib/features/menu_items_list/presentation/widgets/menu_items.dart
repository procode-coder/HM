import 'package:flutter/material.dart';
import 'package:healthyme/features/menu_items_list/data/models/menu_items_model.dart';
import 'package:healthyme/router/router_url.dart';

final List<MenuItem> menuItems = [
  MenuItem(
    icon: Icons.home,
    label: 'Home',
    routeName: MyAppRouteUrl.homeRouteName,
  ),
  MenuItem(
      icon: Icons.dashboard_customize_sharp,
      label: 'Dashboard',
      routeName: MyAppRouteUrl.dashboardRouteName),
  MenuItem(
    icon: Icons.circle,
    label: 'Try',
    routeName: MyAppRouteUrl.tryRouteName,
  ),
];
