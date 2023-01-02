import 'package:facebook/widgets/header_button.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {

  const HeaderButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // header_button custom widget
            navbutton(                  
                name: 'Reel',
                buttonIcon: Icons.video_call,
                buttonColor: Colors.red.shade400,
                buttonAction: (() {})),
                const VerticalDivider(thickness: 2),
            navbutton(
                name: 'Room',
                buttonIcon: Icons.video_call,
                buttonColor: Colors.purple,
                buttonAction: (() {})),
                 const VerticalDivider(thickness: 2),
            navbutton(
                name: 'Group',
                buttonIcon: Icons.group,
                buttonColor: Colors.blue,
                buttonAction: (() {})),
    
            
          ],
        ),
      ),
    );
  }
}
