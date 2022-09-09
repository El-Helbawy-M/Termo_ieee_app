import 'package:flutter/material.dart';

import '../widgets/build_Chat_Items.dart';
import '../widgets/searchRow.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SearchRow(height: height,
                width: width,
                searchController: searchController),
            SizedBox(height: height * 0.02,),
            ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder:(context, index) => const BuildChatItems(),
                separatorBuilder: (context, index) =>
                 const Divider(),
                itemCount: 10)

          ],
        ),
      ),
    );
  }
}




