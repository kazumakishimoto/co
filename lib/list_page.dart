import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  final List<String> entries = <String>['pow', 'pow', 'pow'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length + 1, // +1 for the button
        itemBuilder: (BuildContext context, int index) {
          if (index == entries.length) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('前の画面に戻る'),
              ),
            );
          } else {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('${entries[index]}')),
            );
          }
        },
      ),
    );
  }
}