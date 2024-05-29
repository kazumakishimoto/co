import 'package:flutter/material.dart';

class YouTubePage extends StatelessWidget {
  final List<String> entries = <String>[
    '団長食いたい WWW WWW',
    'インできたわ WWW WWW',
    '温冷咲き乱れcougarスタイル風呂♨️'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('岸本ちゃんねる',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.laptop_chromebook, color: Colors.white),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.search, color: Colors.white),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                      'https://i.ytimg.com/vi/CK6nr6KMubw/hqdefault.jpg?sqp=-oaymwEmCOADEOgC8quKqQMa8AEB-AHUBoACwgOKAgwIABABGGUgXyhWMA8=&rs=AOn4CLDVSN5L_bIQfLQmC2D5lufFcOz3iQhttps://i.ytimg.com/vi/CK6nr6KMubw/hqdefault.jpg?sqp=-oaymwEmCOADEOgC8quKqQMa8AEB-AHUBoACwgOKAgwIABABGGUgXyhWMA8=&rs=AOn4CLDVSN5L_bIQfLQmC2D5lufFcOz3iQ',
                      height: 100,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            maxLines: 3,
                          ),
                          Text(
                            '1053回視聴 5日前',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
