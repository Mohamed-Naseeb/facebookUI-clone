
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  final String labelText;
  final String avatar;
  final String storyImage;
  final bool storyStatus; // story button show or not

  const StoriesCard({super.key, 
    required this.labelText,
    required this.storyImage,
    required this.avatar,
    this.storyStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(storyImage), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: storyStatus
                  ? CircularButton(
                      // terinery operator used (condition ? true : false ;)
                      buttonIcon: Icons.add,
                      buttonAction: (() {}),
                      iconColor: Colors.blue,
                    )
                  : Avatar(
                      displayImage: avatar,
                      isVisible: false,
                      displayBorder: true,
                      height: 35,
                      width: 35,
                    )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
