import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18
                        ),
                        prefixIcon:Icon(Icons.search_outlined)
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.filter))

              ],
            )
          ],
        ),
      ),
    );
  }
}