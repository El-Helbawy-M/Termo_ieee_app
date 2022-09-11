import 'package:flutter/material.dart';

import '../widgets/build_Chat_Items.dart';
import '../widgets/searchRow.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return
       Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SearchBar(
              height: height,
              width: width,
              searchController: searchController,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) => const BuildChatItems(),
                itemCount: 10,
              ),
            )
          ],
        ),

    );
  }
}
