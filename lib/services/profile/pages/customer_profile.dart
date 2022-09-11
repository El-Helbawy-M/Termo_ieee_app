import 'package:flutter/material.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(
              children: [
                Image.network(
                    'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1662731306~exp=1662731906~hmac=215f3ef61a73b08d1803abd3aa3d8ecdf2471a584839b62e8db872a7b65cdf53'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
