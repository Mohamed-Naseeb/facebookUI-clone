import 'package:facebook/assets.dart';
import 'package:facebook/widgets/friend_suggestion.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      child: Column(
        children: [
          ListTile(
              leading: const Text("People You May Know"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                ),
              )),
          Container(
            height: 380,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FriendSuggestion(avatar: messi,name: "Lionel Messi",mutualFriends: "36 Mutual Friends"),
                FriendSuggestion(avatar: elon,name: "Elon Musk",mutualFriends: "24 Mutual Friends"),
                FriendSuggestion(avatar: putin,name: "Vladimir Putin",mutualFriends: "78 Mutual Friends"),
                FriendSuggestion(avatar: iornMan,name: "Robert Downey Jr",mutualFriends: "187 Mutual Friends"),
                FriendSuggestion(avatar: kohli,name: "Virat Kohli",mutualFriends: "205 Mutual Friends"),
              ],

              
            ),
          )
        ],
      ),
    );
  }
}
