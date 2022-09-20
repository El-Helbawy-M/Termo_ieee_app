import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';

import '../../../helpers/constraints.dart';
import '../widgets/circleimage.dart';

class Notificationview extends StatelessWidget {
  const Notificationview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: AppColors.mainColor),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleImage(path: 'assets/images/photo1.jpg', radio: 100),
                Container(
                    height: MediaQueryHelper.height,
                    width: 300,
                    margin: const EdgeInsets.all(30),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: AppColors.mainColor),
                        borderRadius: const BorderRadius.all(
                            Radius.circular(8)) // BoxDecoration
                        ),
                    child:   Text(
                        textAlign: TextAlign.right,
                        style: AppTextStyles.w900,
                        'وَمِنْهُمْ مَنْ عَاهَدَ اللَّهَ لَئِنْ آتَانَا مِنْ فَضْلِهِ لَنَصَّدَّقَنَّ وَلَنَكُونَنَّ مِنَ الصَّالِحِينَ ۝ فَلَمَّا آتَاهُمْ مِنْ فَضْلِهِ بَخِلُوا بِهِ وَتَوَلَّوْا وَهُمْ مُعْرِضُونَ ۝ فَأَعْقَبَهُمْ نِفَاقًا فِي قُلُوبِهِمْ إِلَى يَوْمِ يَلْقَوْنَهُ بِمَا أَخْلَفُوا اللَّهَ مَا وَعَدُوهُ وَبِمَا كَانُوا يَكْذِبُونَ ۝ أَلَمْ يَعْلَمُوا أَنَّ اللَّهَ يَعْلَمُ سِرَّهُمْ وَنَجْوَاهُمْ وَأَنَّ اللَّهَ عَلامُ الْغُيُوبِ  '))
              ]),
        ),
      ),
    );
  }
}
