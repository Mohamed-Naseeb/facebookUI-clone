import 'package:facebook/assets.dart';
import 'package:facebook/sections/header_button_section.dart';
import 'package:facebook/sections/createroom_section.dart';
import 'package:facebook/sections/status_section.dart';
import 'package:facebook/sections/stories_section.dart';
import 'package:facebook/sections/suggestion_section.dart';
import 'package:facebook/widgets/circular_button.dart';
import 'package:facebook/widgets/post_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   
    //thick Divider
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
   
    //thin Divider
    Widget thickDivider = Divider(
      thickness: 5,
      color: Colors.grey[300],
    );
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {},
            ),
            CircularButton(
              buttonIcon: Icons.message,
              buttonAction: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            const HeaderButtonSection(),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StoriesSection(),
            thickDivider,
            PostCard(
              avatar: pranav,
              profileName: "Pranav Mohanlal",
              publishedTime: "5h ago",
              postTitle: "Happy Diwali..!!!",
              postImage: diwali,
              showBlueTick: true,
              likesCount: "10 k",
              commentCount: "1k",
              shareCount: "590",
            ),
            thickDivider,
            PostCard(
              avatar: chrisH,
              profileName: "Chris Hemsworth",
              publishedTime: "7h ago",
              postTitle: "",
              postImage: post9,
              showBlueTick: true,
              likesCount: "100 k",
              commentCount: "12k",
              shareCount: "13k",
            ),
            thickDivider,
            const SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: sharukh,
              profileName: "Sharukh khan",
              publishedTime: "16h ago",
              postTitle: '"The greatest glory in living lies not in never falling, but in rising every time we fall."___',
              postImage: post10,
              showBlueTick: true,
              likesCount: "102 k",
              commentCount: "8k",
              shareCount: "1.3k",
            ),
            thickDivider,
            PostCard(
              avatar: praj,
              profileName: "Prithviraj Sukumaran",
              publishedTime: "1h ago",
              postTitle: '"The Dodge Brothers Company was started in Detroit, Michigan in 1900 as a mechanic shop. Brothers Horace & John Dodge ran the shop, who were engine builders at Ford Motor Company, ',
              postImage: post12,
              showBlueTick: true,
              likesCount: "2 k",
              commentCount: "1.2k",
              shareCount: "1.1k",
            ),
          ],
        ),
      ),
    );
  }
}
