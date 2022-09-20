import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/services/request/widgets/date.dart';
import 'package:thermo_ieee_app/services/request/widgets/request_column.dart';

class RequestDetails extends StatefulWidget {
  const RequestDetails({Key? key}) : super(key: key);

  @override
  State<RequestDetails> createState() => _RequestDetailsState();
}

class _RequestDetailsState extends State<RequestDetails> {
  @override
  Widget build(BuildContext context) {
    DateTime? date;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a request',
          style: TextStyle(color: AppColors.mainColor, fontSize: 30),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            height: 600,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                TextFormReq(
                  title: 'Name',
                  hint: 'Enter the worker name',
                ),
                TextFormReq(
                  title: 'Description',
                  hint: 'Example: fix the light',
                  lines: 4,
                ),
                TextFormReq(
                  title: 'Location',
                  hint: 'Enter your location',
                ),
                Date(context: context),
                SizedBox(
                  height: 60,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.only(right: 30,left: 30)),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.mainColor)),
                    onPressed: () {},
                    child: Text('add'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
