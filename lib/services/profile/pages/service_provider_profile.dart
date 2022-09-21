import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/constraints.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';
import 'package:thermo_ieee_app/services/request/screens/request_details.dart';

import '../widgets/customar_comment.dart';
import '../widgets/service_provider_info.dart';

class ServiceProviderProfile extends StatelessWidget {
  const ServiceProviderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Row(
              children: [

                Text('add request',style: AppTextStyles.w500.copyWith(color: Colors.black),),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RequestDetails()));
                }, icon: Icon(Icons.add)),
              ],
            )

          ],
        ),
        body: SizedBox(
          width: MediaQueryHelper.width,
          height: MediaQueryHelper.height,
          child: ListView(
            children: [
              Center(
                  child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1662731306~exp=1662731906~hmac=215f3ef61a73b08d1803abd3aa3d8ecdf2471a584839b62e8db872a7b65cdf53'),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 8.0),
                  //   child: CircleAvatar(
                  //     radius: 20,
                  //     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  //     child: IconButton(
                  //         onPressed: () {}, icon: const Icon(Icons.camera_alt)),
                  //   ),
                  // ),
                ],
              )),
              SizedBox(
                height: height * .015,
              ),
              Center(
                  child: Text(
                'Moahmed Hussein',
                style: AppTextStyles.w700.copyWith(fontSize: 15),
              )),
              ServiceProviderInfo(height: height),
              Center(
                child: Text(
                  ':  اراء العملاء  ',
                  style: AppTextStyles.w700.copyWith(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => CustomerComment(width: width),
                  itemCount: 3,
                ),
              ),
              Center(
                child: Text(
                  ':   اعماله   ',
                  style: AppTextStyles.w700.copyWith(fontSize: 20),
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.amber,
                      child: Image.network('https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1662731306~exp=1662731906~hmac=215f3ef61a73b08d1803abd3aa3d8ecdf2471a584839b62e8db872a7b65cdf53'),
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}


