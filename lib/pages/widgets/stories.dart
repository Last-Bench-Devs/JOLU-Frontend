import 'dart:ui';

import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  var storyData = [
    "https://m.media-amazon.com/images/M/MV5BMjAwNTE2MDMyMl5BMl5BanBnXkFtZTgwMjAyODM3MTI@._V1_UY1200_CR134,0,630,1200_AL_.jpg",
    "https://images.wsj.net/im-439090?width=860&height=1147",
    "https://feeds.abplive.com/onecms/images/uploaded-images/2021/04/23/61b29c52b1ca5041f2825eccacd07c6d_original.jpg",
    "https://m.media-amazon.com/images/M/MV5BMjAwNTE2MDMyMl5BMl5BanBnXkFtZTgwMjAyODM3MTI@._V1_UY1200_CR134,0,630,1200_AL_.jpg",
    "https://images.wsj.net/im-439090?width=860&height=1147",
    "https://feeds.abplive.com/onecms/images/uploaded-images/2021/04/23/61b29c52b1ca5041f2825eccacd07c6d_original.jpg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(storyData.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  storyData[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
