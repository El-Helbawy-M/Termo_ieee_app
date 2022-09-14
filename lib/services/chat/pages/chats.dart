import 'package:flutter/material.dart';

import '../widgets/build_Chat_Items.dart';
import '../widgets/searchBar.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16,horizontal: 24),
      child: Column(
        children: [
          const SearchBar(),
          SizedBox(height: 24),
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
