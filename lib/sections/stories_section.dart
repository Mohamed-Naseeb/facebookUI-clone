import 'package:facebook/assets.dart';
import 'package:facebook/widgets/stories_card.dart';
import 'package:flutter/material.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            StoriesCard(avatar: dq,storyImage: dq,labelText: "Add to stories",storyStatus: true),
            StoriesCard(labelText: "Chris hemsworth", storyImage: post1, avatar: chrisH),
            StoriesCard(labelText: "Prithviraj Sukumaran", storyImage: post3, avatar: praj),
            StoriesCard(labelText: "Shah Rukh Khan", storyImage: post2, avatar: sharukh),
            StoriesCard(labelText: "Pranav Mohanlal", storyImage: post7, avatar: pranav),
            StoriesCard(labelText: "Cristiano Ronaldo", storyImage: post8, avatar: cristano)
          ],
        ));
  }
}
