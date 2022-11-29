import 'package:flutter/material.dart';

class ChoosePackageScreen extends StatelessWidget {
  const ChoosePackageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6D2B70),
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'اختر الباقة',
          style: TextStyle(
            fontFamily: 'DIN Next LT Arabic',
            fontSize: 20,
            color: const Color(0xffffffff),
            letterSpacing: 0.4,
            height: 1.25,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical:10 ,horizontal:15 ),
        child: Column(
          children: [
            Text(
              'اختر الباقة حسب ما يظهر بالخريطة الاماكن التي تخص الراعي حسب اللون',
              style: TextStyle(
                fontFamily: 'DIN Next LT Arabic',
                fontSize: 16,
                color: const Color(0xff000000),
                letterSpacing: 0.32,
                height: 1.5625,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Image.asset('assets/images/خريطة المعرض.png'),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 194/200), itemBuilder: (BuildContext context, int index) {
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
                      Image.asset('assets/images/Group 3042.png',fit: BoxFit.scaleDown,),

                      Text(
                        'الراعي الإستراتيجي',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          letterSpacing: 0.25714285469055176,
                          fontWeight: FontWeight.w500,
                          height: 1.722222222222222,
                        ),

                        textAlign: TextAlign.right,
                        softWrap: false,
                      )
                    ],
                  ),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}
