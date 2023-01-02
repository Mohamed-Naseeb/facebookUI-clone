// ignore_for_file: prefer_const_constructors

import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        onPressed: (() {}),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \n Room",
          style: TextStyle(color: Colors.blue),
        ),
        style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.blue, width: 1)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dq,
            isVisible: true,
          ),
          Avatar(
            displayImage: pranav,
            isVisible: true,
          ),
          Avatar(
            displayImage: praj,
            isVisible: true,
          ),
          Avatar(
            displayImage: sharukh,
            isVisible: true,
          ),
          Avatar(
            displayImage: chrisH,
            isVisible: true,
          ),
          Avatar(
            displayImage: praj,
            isVisible: true,
          ),
          Avatar(
            displayImage: sharukh,
            isVisible: true,
          ),
          Avatar(
            displayImage: pranav,
            isVisible: true,
          ),
          Avatar(
            displayImage: praj,
            isVisible: true,
          ),
          Avatar(
            displayImage: sharukh,
            isVisible: true,
          ),
        ],
      ),
    );
  }
}
