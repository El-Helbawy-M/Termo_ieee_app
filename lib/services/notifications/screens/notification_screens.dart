import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/chat/widgets/searchRow.dart';

import '../../../helpers/text_styles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView.separated(
            itemBuilder: (context, index) => Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                  NetworkImage(
                    'https://i.pinimg.com/564x/81/38/dd/8138ddafabcbb5816692895ea90a051e.jpg',
                  ),
                  radius: 24,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text('هناك حقيقة واحدة دائما',style: AppTextStyles.w500.copyWith(fontSize: 16 )),
                const Spacer(),

              ],
            ),
            separatorBuilder:(context, index) =>  Divider(thickness: 2),
            itemCount: 10),
      ),
    );
  }
}
