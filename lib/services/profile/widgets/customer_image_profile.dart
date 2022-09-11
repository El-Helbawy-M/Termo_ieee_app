import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 220,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              height: height/5,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1662731306~exp=1662731906~hmac=215f3ef61a73b08d1803abd3aa3d8ecdf2471a584839b62e8db872a7b65cdf53'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.edit)),
            ),
          ),
        ],
      ),
    );
  }
}