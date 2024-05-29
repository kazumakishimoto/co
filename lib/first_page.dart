import 'package:co/second_page.dart';
import 'package:co/list_page.dart';
import 'package:co/youTube.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

  String nameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ファースト'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  'https://pbs.twimg.com/profile_images/1714063400693571584/11R54Fos_400x400.jpg'),
              TextField(
                onChanged: (text) {
                  nameText = text;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage(nameText)),
                  );
                },
                child: Text('入力完了'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPage()),
                  );
                },
                child: Text('リストを表示'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YouTubePage()),
                  );
                },
                child: Text('岸本ちゃんねる'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}