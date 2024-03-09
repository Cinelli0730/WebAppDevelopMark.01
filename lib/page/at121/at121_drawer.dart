import 'package:flutter/material.dart';

class AT121Drawer extends StatelessWidget {
  const AT121Drawer({
    super.key,
    required this.userName,
    required this.roleName,
  });
  final String userName;
  final String roleName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(userName),
            accountEmail: Text(roleName),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: FlutterLogo(size: 42.0),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('ユーザー情報'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.work),
                  title: const Text('勤怠登録'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.calendar_today),
                  title: const Text('月間シフト'),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('ログアウト'),
            onTap: () {
              // ログアウト処理をここに実装
              Navigator.pop(context); // ドロワーを閉じる
            },
          ),
        ],
      ),
    );
  }
}
