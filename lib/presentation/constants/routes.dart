import 'package:flutter/material.dart';
import 'package:flutter_chat/presentation/pages/login/login_page.dart';
import 'package:flutter_chat/presentation/pages/users/users_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  LoginPage.routeName: (_) => LoginPage(),
  UsersPage.routeName: (_) => UsersPage()
};
