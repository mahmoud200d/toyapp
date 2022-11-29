
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReserveSpaceScreen extends StatelessWidget {
  const ReserveSpaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFC6D2B70),
      ),
      body: Column(
        children: [
          Container(
            height: 310,
            width: double.infinity,
            color: Color(0XFFC6D2B70),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/NoPath - Copy (8).png',width: 120,height: 120,fit: BoxFit.cover,),
                Text(
                  'اسم الشركة',
                  style: TextStyle(
                    fontFamily: 'DIN Next LT Arabic',
                    fontSize: 20,
                    color: const Color(0xffffffff),
                    letterSpacing: 0.28571428298950197,
                    height: 1.8,
                  ),
                )


              ],
            ),


          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Column(
              children: [
                Row (
                  children: [
                    Icon(Icons.person,color: Color(0xFF911D74),),
                    SizedBox(width: 10,),
                    Text(
                      'محمد عبد الله احمد',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28571428298950197,
                        height: 1.25,
                      ),
                    ),

                  ],


                ),
                SizedBox(height: 10,),
                Row (
                  children: [
                    Icon(Icons.phone,color: Color(0xFF911D74),),
                    SizedBox(width: 10,),
                    Text(
                      '+966123456789',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 18,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28571428298950197,
                        height: 1.25,
                      ),

                    )

                  ],


                ),
                SizedBox(height: 10,),
                Row (
                  children: [
                    Icon(Icons.mail,color: Color(0xFF911D74),),
                    SizedBox(width: 10,),
                    Text(
                      'Mail@Website.com',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 15,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28571428298950197,
                        height: 1.25,
                      ),
                    )
                  ],


                ),
                SizedBox(height: 10,),
                Row (
                  children: [
                    Icon(Icons.location_on,color: Color(0xFF911D74),),
                    SizedBox(width: 10,),
                    Text(
                      'السعودية',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28571428298950197,
                        height: 1.25,
                      ),

                    )
                  ],


                ),
                SizedBox(height: 20,),
                SvgPicture.string(
                  '<svg viewBox="40.5 482.5 352.0 1.0" ><path transform="translate(40.5, 482.5)" d="M 352 0 L 0 0" fill="none" stroke="#d4d4d4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 20,),

                   Text(
                    'نركو اختيار مساحة عمل خاصة بكم من خلال الضغط على رز حجز مساحة ثم اختيار رقم المساحة المرغوب بها',
                    style: TextStyle(
                      fontFamily: 'DIN Next LT Arabic',
                      fontSize: 16,
                      color: const Color(0xff000000),
                      letterSpacing: 0.32,
                      height: 1.5625,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                SizedBox(height: 15,),
                Container(
                  width: 180,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF911D74)
                      ),
                      onPressed: (){}, child:Row(children: [
                    SvgPicture.asset('assets/icon/Component 8 – 3.svg'),
                    Text(
                      'حجز مساحة',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                        height: 0.9,
                      ),

                    )


                  ],)),
                )




              ],
            ),
          )
        ],
      ),
    );
  }
}
