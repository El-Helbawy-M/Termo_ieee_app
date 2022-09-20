import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/services/request/widgets/request_column.dart';

class RequestDetails extends StatefulWidget {
  const RequestDetails({Key? key}) : super(key: key);

  @override
  State<RequestDetails> createState() => _RequestDetailsState();
}

class _RequestDetailsState extends State<RequestDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormReq(
                title: 'Name',
                hint: 'Enter the worker name',
              ),
              SizedBox(
                height: height/40,
              ),
              TextFormReq(
                title: 'Description',
                hint: 'Example: fix the light',
                lines: 4,
              ),
              SizedBox(
                height: height/40,
              ),
              TextFormReq(
                title: 'Location',
                hint: 'Enter your location',
              ),
              SizedBox(
                height: height/40,
              ),
              Text(
                'Date',
                style: TextStyle(fontSize: 17),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.hintFieldColor,
                  ),
                  child: Text(
                    "${DateTime.now().toLocal()}".split(' ')[0],
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  )),
              SizedBox(
                height: height/18,
              ),
              Container(
                width: width/0.3,
                height: height/18,
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.only(right: 30,left: 30)),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.mainColor)),
                  onPressed: () {},
                  child: const Text('Create'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
