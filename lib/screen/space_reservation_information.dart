import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpaceReservationInformation extends StatelessWidget {
  const SpaceReservationInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6D2B70),
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        actions: [],
      ),
      body: Column(
        children: [
          Container(
            height: 310,
            width: 430,
            color: Color(0xFF6D2B70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/NoPath - Copy (8).png',
                  width: 120,
                  height: 120,
                ),
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
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color(0xFF911D74),
                    ),
                    SizedBox(
                      width: 10,
                    ),
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Color(0xFF911D74),
                    ),
                    SizedBox(
                      width: 10,
                    ),
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xFF911D74),
                    ),
                    SizedBox(
                      width: 10,
                    ),
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
                SizedBox(
                  height: 10,
                ),
                SvgPicture.string(
                  '<svg viewBox="40.5 482.5 352.0 1.0" ><path transform="translate(40.5, 482.5)" d="M 352 0 L 0 0" fill="none" stroke="#d4d4d4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'نركو اختيار مساحة عمل خاصة بكم من خلال الضغط على رز حجز مساحة ثم اختيار رقم المساحة المرغوب بها',
                  style: TextStyle(
                    fontFamily: 'DIN Next LT Arabic',
                    fontSize: 16,
                    color: const Color(0xff000000),
                    letterSpacing: 0.32,
                    height: 1.5625,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 170,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff911D74),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'رقم مكان مساحة العمل',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 20,
                              color: const Color(0xffffffff),
                              height: 1.4,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                          ),
                          Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 30,
                                color: const Color(0xff6d2b70),
                                letterSpacing: 0.4285714244842529,
                                fontWeight: FontWeight.w700,
                                height: 1.8333333333333335,
                              ),
                              textAlign:TextAlign.center ,
                            )
                          )

                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ابعاد مكان مساحة العمل',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 20,
                              color: const Color(0xffffffff),
                              height: 1.4,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                          ),
                          Container(
                              height: 60,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Text(
                                '9x1م',
                                style: TextStyle(
                                  fontFamily: 'DIN Next LT Arabic',
                                  fontSize: 30,
                                  color: const Color(0xff6d2b70),
                                  letterSpacing: 0.4285714244842529,
                                  fontWeight: FontWeight.w700,
                                  height: 1.8333333333333335,
                                ),
                                textAlign:TextAlign.center ,
                              )
                          )

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
