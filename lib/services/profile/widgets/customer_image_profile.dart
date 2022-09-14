import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.af87fe3928d3df619adb13e8b0814def?rik=%2fHt7Kf%2fxfpp%2bnw&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f6%2f4%2fd%2f1123250-swiss-alps-wallpaper-3840x2160-for-pc.jpg&ehk=Hw82KRA6UKLMhdX%2feKHrZ6lCJNn5L6cuP5U6fGZgrdk%3d&risl=&pid=ImgRaw&r=0'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 24,
          bottom: -25,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: Colors.black.withOpacity(.1),
                )
              ],
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          ),
        ),
      ],
    );
  }
}
