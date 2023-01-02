
import 'package:flutter/material.dart';

class FriendSuggestion extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;

  const FriendSuggestion({super.key, 
    required this.avatar,
    required this.name,
    required this.mutualFriends,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            height: 135,
            child: Column(
              children: [
                ListTile(
                  title: Text(name),
                  subtitle: Text(mutualFriends),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      addfriendButton(
                        buttonAction: () {},
                        buttonColor: Colors.blue.shade600,
                        buttonIcon: Icons.add,
                        buttonIconColor: Colors.white,
                        text: "Add Friend",
                        textColor: Colors.white,
                      ),
                      removefriendButton(
                          buttonAction: () {},
                          buttonColor: Colors.grey.shade300,
                          text: "Remove",
                          textColor: Colors.black)
                    ],
                  ),
                )
              ],
            )));
  }

  Widget addfriendButton({
    required void Function() buttonAction,
    required Color buttonColor,
    required IconData buttonIcon,
    required Color buttonIconColor,
    required String text,
    required Color textColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
      ),
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget removefriendButton({
    required void Function() buttonAction,
    required Color buttonColor,
    required String text,
    required Color textColor,
  }) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
      ),
      onPressed: buttonAction,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
        left: 0,
        right: 0,
        top: 0,
        bottom: 100,
        child: ClipRRect(                            // used to give circle shape to images
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
                bottomLeft:
                    Radius.circular(15)), 
            child: Image.asset(
              avatar,
              fit: BoxFit.cover,
            )));
  }
}
