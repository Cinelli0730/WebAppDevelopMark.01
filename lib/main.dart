import 'package:flutter/material.dart';
import 'package:webapp_dev_mark01_flutter/page/at111/at111.dart';
// TODO At111にどこまで含めるか
///アプリケーションのmain関数

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInPage(),
    );
  }
}
