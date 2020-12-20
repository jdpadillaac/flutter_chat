import 'package:flutter/material.dart';
import 'package:flutter_chat/presentation/constants/routes.dart';
import 'package:flutter_chat/presentation/constants/theme_data.dart';
import 'package:flutter_chat/presentation/pages/login/login_page.dart';

void main() => runApp(MyApp());

// app desing reference
// https://codecanyon.net/item/flutkit-flutter-ui-kit/27510289

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      initialRoute: LoginPage.routeName,
      routes: appRoutes,
    );
  }
}
