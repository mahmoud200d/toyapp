import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit=ToyApp.get(context);
    return BlocConsumer<ToyApp,ToyAppState>(
      listener: (context,index){},
      builder: (context,index){
        return Scaffold(
          appBar:AppBar(
              elevation: 0,
              backgroundColor: Color(0xFF6D2B70),
              leading: Icon(Icons.arrow_back_ios),
              title:Text(
                'التفاصيل',
                style: TextStyle(
                  fontFamily: 'DIN Next LT Arabic',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.4,
                  height: 3.25,
                ),

              )
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(

              children: [
                Image.asset('assets/images/Rectangle 1599.png',fit: BoxFit.cover),
                SizedBox(height: 15,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(

                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'معرض الرياض لألعاب الاطفال',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 20,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '22/04/2022',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 16,
                            color: const Color(0xff949494),
                            height: 1.75,
                          ),

                        )
                      ),
                      SingleChildScrollView(
                        primary: false,
                        child: Text(
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.\nإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.\nومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.\nهذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            letterSpacing: 0.32,
                            height: 1.5625,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                        ),
                      )

                    ],
                  ),
                )

              ],
            ),
          ),
        );
      },

    );
  }
}
