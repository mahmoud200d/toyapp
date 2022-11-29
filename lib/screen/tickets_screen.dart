import 'package:flutter/material.dart';

class TicketsScreen extends StatelessWidget {
  TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF6D2B70),
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'التذاك',
            style: TextStyle(
              fontFamily: 'DIN Next LT Arabic',
              fontSize: 20,
              color: const Color(0xffffffff),
              letterSpacing: 0.4,
              height: 3.25,
            ),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'وفرنا لكم قائمة بافضل الشركات والعروض لشراء تذاكر السفر وافضل الفنادق وبعض الخدمات المساعدة اثناء اقامتكم',
              style: TextStyle(
                fontFamily: 'DIN Next LT Arabic',
                fontSize: 16,
                color: const Color(0xff000000),
                letterSpacing: 0.32,
                height: 1.5625,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF911D74),
                    minimumSize: (Size(200, 60)),
                  ),
                  onPressed: () {
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/component_1.png',
                        fit: BoxFit.scaleDown,
                      ),
                      Text(
                        'حجز تذكرة',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 20,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                          height: 0.9,
                        ),
                      ),
                    ],
                  )),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'اليوم الأول',
                style: TextStyle(
                  fontFamily: 'DIN Next LT Arabic',
                  fontSize: 20,
                  color: const Color(0xff911d74),
                  height: 3,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 8000,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 210 / 280,
                ),
                itemBuilder: (context, index) {
                  return Container(

                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xfff0f0f0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x21a92f86),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'انطلاق الفعاليات',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 18,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),

                        ),
                        Text(
                          '1- افتتاح الاجنحه وفتح الابواب امام الزوار',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 14,
                            color: const Color(0xff000000),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          '2- انطلاق أعمال المركز الإعلامي\nوالاستديو الخارجي المفتوح',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 14,
                            color: const Color(0xff000000),
                            height: 1.4285714285714286,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          '3- جولة التعارف والاطلاع على أجنحة المعرض وتحية ميدانية للمشاركين',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 14,
                            color: const Color(0xff000000),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          '4-انطلاق بطولة الروبوت الصنف الأول',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 14,
                            color: const Color(0xff000000),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                        ),
                        SingleChildScrollView(
                          primary: false,
                          child: Text(
                            '5-انطلاق جلسات شراكه و حوارات\n.B2B استثماري',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 14,
                              color: const Color(0xff000000),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
                        )


                      ],
                    ) ,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
