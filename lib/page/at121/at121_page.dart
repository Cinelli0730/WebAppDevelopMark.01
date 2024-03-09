import 'package:flutter/material.dart';
import 'package:webapp_dev_mark01_flutter/dto/common/login_dto.dart';
import 'package:webapp_dev_mark01_flutter/page/at121/at121_drawer.dart';

class AT121Page extends StatefulWidget {
  const AT121Page({
    super.key,
    required this.loginDto,
  });
  final LoginDto loginDto;

  @override
  State<AT121Page> createState() => _AT121State();
}

class _AT121State extends State<AT121Page> {
  final List<String> _todoItems = ["TODO 1", "TODO 2", "TODO 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Webapp-Dev-Mark.01"),
        centerTitle: true,
      ),
      drawer: AT121Drawer(
        userName: widget.loginDto.userName,
        roleName: widget.loginDto.roleDto.roleName,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 50, right: 50), // 上に余白を追加
        child: ListView.builder(
          itemCount: _todoItems.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8.0), // コンテナの周りに余白を追加
              decoration: BoxDecoration(
                color: Colors.lightBlue[100], // コンテナの背景色
                borderRadius: BorderRadius.circular(10), // 角の丸み
              ),
              child: ListTile(
                title: Text(
                  _todoItems[index],
                  textAlign: TextAlign.center,
                ),
                onTap: () => _onTodoItemTapped(index),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onTodoItemTapped(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('ToDo Item Tapped'),
          content: Text('You tapped: ${_todoItems[index]}'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
