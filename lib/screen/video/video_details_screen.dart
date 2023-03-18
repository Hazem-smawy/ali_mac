import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:emad_app/screen/video/video_item_player_widget.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoDetailsScreen extends StatelessWidget {
  const VideoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              ClipRRect(
                                      borderRadius: BorderRadius.circular(20),

                child: Container(
                 constraints: BoxConstraints(minHeight: 150,maxHeight: Get.width - 70),
                  width: double.infinity,
                  decoration: BoxDecoration(
                     // borderRadius: BorderRadius.circular(20),
                      color: MyColors.blueColor),
                      child: VideoPlayerWidget(videoUrl: 'https://www.youtube.com/watch?v=0MEeJzOU6eQ'),
                ),
              ),
              SizedBox(height: 10),

              Column(
                children: [
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'الفوائد العلمية المطرية في التعليقات على الأربعين النووية ة الرابعة',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: myTextStyles.title2,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'الفوائد العلمية المطرية في التعليقات على الأربعين النووية ة الرابعة',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: myTextStyles.body,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      SizedBox(width: 15),
                      Expanded(
                          child: Divider(
                        color: MyColors.lightGreenColor,
                      )),
                      SizedBox(
                        width: 50,
                        child: Divider(
                          thickness: 3,
                          color: MyColors.lightGreenColor,
                        ),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.bg,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                         Text(
                          'التفاصيل',
                          style: myTextStyles.subTitle,
                        ),
                        const SizedBox(height: 20),
                        RichText(
                            textAlign: TextAlign.right,
                            text: TextSpan(
                                style: myTextStyles.subTitle
                                    .copyWith(fontWeight: FontWeight.normal),
                                text: """
    الحمدلله. 
    لقد أولى الإسلام صفوف المصلين عناية كبيرة , حيث أمر بتسوية
     الصفوف , وأظهر فضيلة تسويتها , والاهتمام بها .
    
    فعنْ أَنَسِ بْنِ مَالِكٍ رضي الله عنه عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ 
    قَالَ : ( سَوُّوا صُفُوفَكُمْ , فَإِنَّ تَسْوِيَةَ الصَّفِّ مِنْ تَمَامِ الصَّلاةِ ) 
    رواه البخاري ( 690 ) ومسلم ( 433) , وفي رواية للبخاري ( 723 )
     : ( سَوُّوا صُفُوفَكُمْ , فَإِنَّ تَسْوِيَةَ الصُّفُوفِ مِنْ إِقَامَةِ الصَّلاةِ ) .
    
    وعَنْ أَبِي مَسْعُودٍ رضي الله عنه قَالَ : كَانَ رَسُولُ اللَّهِ صَلَّى اللَّهُ 
    عَلَيْهِ وَسَلَّمَ يَمْسَحُ مَنَاكِبَنَا فِي الصَّلاةِ وَيَقُولُ : ( اسْتَوُوا , وَلا تَخْتَلِفُوا
    فَتَخْتَلِفَ قُلُوبُكُمْ ) رواه مسلم (432 ) .
    
    وعن النُّعْمَانَ بْنَ بَشِيرٍ رضي الله عنهما قال : كَانَ رَسُولُ اللَّهِ صَلَّى
    اللَّهُ عَلَيْهِ وَسَلَّمَ يُسَوِّي صُفُوفَنَا حَتَّى كَأَنَّمَا يُسَوِّي بِهَا الْقِدَاحَ ،
    حَتَّى رَأَى أَنَّا قَدْ عَقَلْنَا عَنْهُ ثُمَّ خَرَجَ يَوْمًا فَقَامَ حَتَّى كَادَ يُكَبِّرُ ، فَرَأَى
    رَجُلا بَادِيًا صَدْرُهُ مِنْ الصَّفِّ ، فَقَالَ : ( عِبَادَ اللَّهِ ، لَتُسَوُّنَّ صُفُوفَكُمْ
     أَوْ لَيُخَالِفَنَّ اللَّهُ بَيْنَ وُجُوهِكُمْ ) . رواه البخاري ( 717 ) ومسلم (436) .
    
    فهذه النصوص واضحة في وجوب تسوية الصفوف , 
    قال البخاري رحمه الله في صحيحه : ( باب إثم من لا يتم الصفوف ) 
    , وأورد فيه بسنده عَنْ بُشَيْرِ بْنِ يَسَارٍ الْأَنْصَارِيِّ عَنْ أَنَسِ بْنِ مَالِكٍ
     أَنَّهُ قَدِمَ الْمَدِينَةَ فَقِيلَ لَهُ : مَا أَنْكَرْتَ مِنَّا مُنْذُ يَوْمِ عَهِدْتَ رَسُولَ اللَّهِ
     صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ؟ قَالَ : ( مَا أَنْكَرْتُ شَيْئًا إِلا أَنَّكُمْ 
    لا تُقِيمُونَ الصُّفُوفَ ) رواه البخاري (724) .
    """)),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
