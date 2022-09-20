import 'package:flutter/material.dart';

import '../../../../helpers/colors.dart';
import '../../../../helpers/text_styles.dart';
import '../info_item.dart';

class WorkerCard extends StatelessWidget {
  const WorkerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.grey),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // name of the request
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "name",
                          style: AppTextStyles.w700.copyWith(
                            color: AppColors.mainColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      // short description
                      Text(
                        "سباك",
                        style: AppTextStyles.w500
                            .copyWith(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      // worker summary info
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                           InfoItem(
                            leadingIcon: Icon(
                              Icons.location_pin,
                              size: 15,
                            ),
                            label: "المنصوره",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: InfoItem(
                              leadingIcon: Icon(
                                Icons.phone,
                                size: 15,
                              ),
                              label:"0100000000",
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Image.network(
              'https://img.freepik.com/free-vector/white-shirt-template_1132-95.jpg?2&w=740&t=st=1663622737~exp=1663623337~hmac=64f73eace42e54df1a2f24ff65b5a65dbb322766d5bb8518de14d71d163dc3f4',
                scale: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
