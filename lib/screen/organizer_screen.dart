
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6D2B70),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          itemBuilder: (context,index){
        return Container(
          height: 425,
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
              Image.asset('assets/images/Group 3042.png',),
              Text(
                'الراعي الإستراتيجي',
                style: TextStyle(
                  fontFamily: 'DIN Next LT Arabic',
                  fontSize: 18,
                  color: const Color(0xff000000),
                  letterSpacing: 0.25714285469055176,
                  fontWeight: FontWeight.w500,
                  height: 1.722222222222222,
                ),
              ),
              Column(
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

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/icon/Group 1030.svg'),
                      SvgPicture.asset('assets/icon/Group 1029.svg'),
                      SvgPicture.asset('assets/icon/Group 18.svg'),
                      SvgPicture.asset('assets/icon/Group 1027.svg'),



                    ],
                  )


                ],
              )
            ],
          ),
        );
      }, separatorBuilder:  (context,index){
        return SizedBox(height: 10,);
      }, itemCount: 6),
    );

  }
}
