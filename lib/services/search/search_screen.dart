import 'package:flutter/material.dart';

import '../../helpers/colors.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.mainColor) ),
                          fillColor: AppColors.hintFieldColor,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: AppColors.mainColor)),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: Icon(Icons.search_outlined)),
                    ),
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(radius: 25,
                    backgroundColor: AppColors.mainColor,
                    child: Icon(
                      Icons.tune,
                      color: AppColors.borderColor,size: 32,
                    ),
                  )
                ],
              )
            ],
          ),),
        ),
      ),
    );
  }
}


