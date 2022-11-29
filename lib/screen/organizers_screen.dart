import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrganizersScreen extends StatelessWidget {
  const OrganizersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6D2B70),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 330,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(width: 1.0, color: const Color(0xfff0f0f0)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x21a92f86),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Rectangle 1504.jpg',width: 50,height:50,),
                        SizedBox(width: 15,),
                        Column(
                          children: [
                            Text(
                              'تـــيـم واي',
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w500,
                                height: 1.4,
                              ),),
                            Text(
                              'TEAM WAY',
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 18,
                                color: const Color(0xff000000),
                                height: 1.5555555555555556,
                              ),
                            ),



                          ],
                        )
                      ],
                    ),
                    Text(
                      '+966123456789',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        letterSpacing: 0.19999999809265134,
                        height:2.5,
                      ),
                    ),
                    Text(
                      'Mail@Website.com',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        letterSpacing: 0.19999999809265134,
                        height: 1.571428571428571,
                      ),
                    ),
                    Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا من مولد العربى..',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28,
                        height: 1.4285714285714286,
                      ),

                    ),
                    Text(
                      'الخدمات',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xff911d74),
                        height: 1.5,
                      ),
                      ),
                    Text(
                      '- تنظيم المعرض',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28571428298950197,
                        height: 1.25,
                      ),

                    ),
                    Text(
                      '- تنظيم المعرض',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28571428298950197,
                        height: 1.25,
                      ),

                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icon/Group 1030.svg'),
                        SvgPicture.asset('assets/icon/Group 1029.svg'),
                        SvgPicture.asset('assets/icon/Group 18.svg'),
                      SvgPicture.asset('assets/icon/Group 1027.svg'),



                      ],
                    )


                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
            itemCount: 3),
      ),
    );
  }
}
