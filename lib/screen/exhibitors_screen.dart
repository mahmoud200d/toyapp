import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExhibitorsScreen extends StatelessWidget {
  const ExhibitorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6D2B70),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(
          'العارضين',
          style: TextStyle(
            fontFamily: 'DIN Next LT Arabic',
            fontSize: 20,
            color: const Color(0xffffffff),
            letterSpacing: 0.4,
            height: 3.25,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 40,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,childAspectRatio: 199/290),
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x21a92f86),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle 1499.png',

                          ),
                          Positioned(
                              left: 0,
                              child: Image.asset('assets/images/Group 2918.png')),
                          Positioned(
                              top: 10,
                              right: 60,
                              child: Image.asset(
                                'assets/images/NoPath - Copy (7).png',
                                fit: BoxFit.scaleDown,
                              )),
                        ],
                      ),
                      Text(
                        'اسم العارض المشارك',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 18,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          height: 1.5555555555555556,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone,color: Color(0xFF911D74),),
                          SizedBox(width: 5,),
                          Text(
                            '+966123456789',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 14,
                              color: const Color(0xff000000),
                              letterSpacing: 0.19999999809265134,
                              height: 1.071428571428571,
                            ),

                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.email,color: Color(0xFF911D74),),
                          SizedBox(width: 5,),
                          Text(
                            'Mail@Website.com',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 14,
                              color: const Color(0xff000000),
                              letterSpacing: 0.19999999809265134,
                              height: 1.071428571428571,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا من مولد العربى..',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 14,
                          color: const Color(0xff000000),
                          letterSpacing: 0.28,
                          height: 1.585714285714286,
                        ),

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/icon/Group 1030.svg'),
                          SvgPicture.asset('assets/icon/Group 1029.svg'),
                          SvgPicture.asset('assets/icon/Group 18.svg'),
                          SvgPicture.asset('assets/icon/Group 1027.svg'),



                        ],
                      )
















                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
