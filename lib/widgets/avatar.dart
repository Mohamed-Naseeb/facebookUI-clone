import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool isVisible;
  final bool displayBorder;
  final double width;
  final double height;

  const Avatar({super.key, 
    required this.displayImage,
    required this.isVisible,
    this.displayBorder = false,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder ? Border.all(     // using ternary operator display border
              color: Colors.blueAccent,
              width: 3
            ): const Border()
          ),
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                displayImage,
                width: width,
                height: height,
                fit: BoxFit.cover,
              )),
        ),
        Visibility(
          visible: isVisible,
          child: Positioned(
            bottom: 0,
            right: 1,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2)),
            ),
          ),
        )
      ],
    );
  }
}
