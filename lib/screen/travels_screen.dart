import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelsScreen extends StatelessWidget {
  const TravelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF6D2B70),
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'السفر والفنادق',
            style: TextStyle(
              fontFamily: 'DIN Next LT Arabic',
              fontSize: 20,
              color: const Color(0xffffffff),
              letterSpacing: 0.4,
              height: 1.25,
            ),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Text(
              'وفرنا لكم قائمة بافضل الشركات والعروض لشراء تذاكر السفر وافضل الفنادق وبعض الخدمات المساعدة اثناء اقامتكم',
              style: TextStyle(
                fontFamily: 'DIN Next LT Arabic',
                fontSize: 16,
                color: const Color(0xff000000),
                letterSpacing: 0.32,
                height: 1.25,
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 13,childAspectRatio:200/190 ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 1.0, color: const Color(0xfff0f0f0)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x21a92f86),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/NoPath - Copy (8).png'),
                      Text(
                        'اسم الشركة',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 18,
                          color: const Color(0xff000000),
                          letterSpacing: 0.25714285469055176,
                          fontWeight: FontWeight.w500,
                          height: 1.722222222222222,
                        ),

                      )
                    ],
                  ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
