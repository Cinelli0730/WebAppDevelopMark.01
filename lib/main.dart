import 'package:flutter/material.dart';
import 'package:webapp_dev_mark01_flutter/const/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Colors.black, // プライマリーカラーを黒に設定
          secondary: Colors.grey, // セカンダリーカラーをグレーに設定
          surface: Colors.grey[850]!, // サーフェスカラーを暗いグレーに設定
          background: Colors.grey[900]!, // バックグラウンドカラーをより暗いグレーに設定
          onPrimary: Colors.white, // プライマリーカラーのテキストカラーを白に設定
          onSecondary: Colors.black, // セカンダリーカラーのテキストカラーを黒に設定
          onSurface: Colors.white, // サーフェスカラーのテキストカラーを白に設定
          onBackground: Colors.white, // バックグラウンドカラーのテキストカラーを白に設定
        ),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      routerDelegate: AppRoutes.routes.routerDelegate,
      routeInformationParser: AppRoutes.routes.routeInformationParser,
      routeInformationProvider: AppRoutes.routes.routeInformationProvider,
    );
  }
}
