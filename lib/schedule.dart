import 'package:flutter/material.dart';

// TODO ListViewサンプルプログラムで十分画面の作成ができそうならそちらで開発する

class ScheduleWidget extends StatefulWidget {
  final int _NumColumn = 1;
  final int _NumLine = 7;
  const ScheduleWidget({super.key});

  @override
  State<ScheduleWidget> createState() => _ScheduleWidget();
}

class _ScheduleWidget extends State<ScheduleWidget> {
  _ScheduleWidget();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const ListTile(title: Text('セクションタイトル')),
        SizedBox(
          height: 200,
          child: GridView.builder(
            scrollDirection: Axis.horizontal, // 横スクロール
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => const SizedBox(
              height: 100,
              width: 200,
              child: DateCell(),
            ),
          ),
        ),
        const ListTile(title: Text('別のセクション')),
      ],
    );
  }
}

class DateCell extends StatefulWidget {
  const DateCell({super.key});

  @override
  State<DateCell> createState() => _DateCell();
}

class _DateCell extends State<DateCell> {
  int? dropDownMenuItemIdx;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("01/22"),
        DropdownButton(
          items: const [DropdownMenuItem(value: 0, child: Text("出勤")), DropdownMenuItem(value: 1, child: Text("欠勤"))],
          onChanged: (int? value) {
            setState(() {
              dropDownMenuItemIdx = value;
            });
          },
          value: dropDownMenuItemIdx,
        )
      ],
    );
  }
}
