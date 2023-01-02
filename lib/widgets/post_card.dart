import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blue_tick.dart';
import 'package:facebook/widgets/header_button.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String profileName;
  final String publishedTime;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likesCount;
  final String shareCount;
  final String commentCount;

  const PostCard({super.key, 
    required this.avatar,
    required this.profileName,
    required this.publishedTime,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likesCount,
    required this.shareCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(color: Colors.grey.shade300,thickness: 1,),
          likeSection(),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, isVisible: false),
      title: Row(
        children: [
          Text(
            profileName,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
          showBlueTick ? const BlueTick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedTime),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 16,
          ),
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }

  Widget titleSection() {
    return postTitle !=null && postTitle !="" ? Container(
      padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
      child: Text(
        postTitle,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    ) : const SizedBox();
  }

  Widget imageSection() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),

      //padding: EdgeInsets.only(),
      child: Image.asset(
        postImage,
      ),
    );
  }

  Widget footerText({required String text}) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget footerSection() {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                footerText(text: likesCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                footerText(text: commentCount),
                const SizedBox(width: 2),
                footerText(text: "Comments"),
                const SizedBox(width: 7),
                footerText(text: shareCount),
                const SizedBox(width: 2),
                footerText(text: "Shares"),
                Avatar(
                  displayImage: avatar,
                  isVisible: false,
                  width: 20,
                  height: 20,
                ),
                IconButton(
                    onPressed: (() {}), icon: const Icon(Icons.arrow_drop_down))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget likeSection (){
    return Container(
      
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navbutton(
                name: 'Like',
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonColor: Colors.grey,
                buttonAction: (() {})),
                const VerticalDivider(thickness: 2),
            navbutton(
                name: 'Comment',
                buttonIcon: Icons.comment_outlined,
                buttonColor: Colors.grey,
                buttonAction: (() {})),
                 const VerticalDivider(thickness: 2),
            navbutton(
                name: 'share',
                buttonIcon: Icons.share_outlined,
                buttonColor: Colors.grey,
                buttonAction: (() {})),
    
            
          ],
        ),
      ),
    );
  }
}
