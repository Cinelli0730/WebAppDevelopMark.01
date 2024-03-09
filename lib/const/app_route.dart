import 'package:go_router/go_router.dart';
import 'package:webapp_dev_mark01_flutter/dto/common/login_dto.dart';
import 'package:webapp_dev_mark01_flutter/page/at111/at111_page.dart';
import 'package:webapp_dev_mark01_flutter/page/at112/at112_page.dart';
import 'package:webapp_dev_mark01_flutter/page/at121/at121_page.dart';

class AppRoutes {
  static final GoRouter routes = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/at111',
    routes: <GoRoute>[
      GoRoute(
        name: 'AT111',
        path: '/at111',
        builder: (context, state) => const AT111Page(),
      ),
      GoRoute(
        /// 画面へ遷移する際にデータを渡す際は以下のようにextraにデータを設定する
        /// ※URLからデータを取得する場合は、GoRouter.of(context).parameters['id']で取得できるが基本使用しない前提で設計する
        ///
        ///
        name: 'AT112',
        path: '/at112',
        builder: (context, state) {
          final userCode = state.extra as String;
          return AT112Page(userCode: userCode);
        },
      ),
      GoRoute(
        name: 'AT121',
        path: '/at121',
        // 各画面に子要素とし設定する場合は以下のように入れ子構造にする。多重構造にすることも可能。
        // ※これがない場合ルートが置き換わるため、アプリ内の戻るボタンが機能しない
        // routes: [
        //   GoRoute(
        //     name: 'at121',
        //     path: '/:id',
        //     builder: (context, state) => const AT121Page(),
        //   ),
        // ],
        builder: (context, state) {
          final LoginDto loginDto = state.extra as LoginDto;
          return AT121Page(loginDto: loginDto);
        },
      ),
    ],
  );
}
