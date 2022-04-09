import 'package:flutter/material.dart';
import 'package:test/pages/widgets/posts.dart';
import 'package:test/pages/widgets/stories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var storyData = [
    "https://thumbs.dreamstime.com/b/silhouette-beach-sunset-boy-background-93740547.jpg",
    "https://m.media-amazon.com/images/M/MV5BMjAwNTE2MDMyMl5BMl5BanBnXkFtZTgwMjAyODM3MTI@._V1_UY1200_CR134,0,630,1200_AL_.jpg",
    "https://images.wsj.net/im-439090?width=860&height=1147",
    "https://feeds.abplive.com/onecms/images/uploaded-images/2021/04/23/61b29c52b1ca5041f2825eccacd07c6d_original.jpg",
    "https://m.media-amazon.com/images/M/MV5BMjAwNTE2MDMyMl5BMl5BanBnXkFtZTgwMjAyODM3MTI@._V1_UY1200_CR134,0,630,1200_AL_.jpg",
    "https://images.wsj.net/im-439090?width=860&height=1147",
    "https://feeds.abplive.com/onecms/images/uploaded-images/2021/04/23/61b29c52b1ca5041f2825eccacd07c6d_original.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: storyData.length + 2,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  //////stories here //////////
                  return Stories();
                } else if (index == storyData.length + 1) {
                  return Container(
                    height: 150,
                  );
                } else {
                  return Posts(
                    image: storyData[index - 1],
                  );
                }
              },
            ),
          )
        ],
      ),
    ));
  }
}
