

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Layer_4.png',width: double.infinity,),
          Text(
            'معرض الرياض',
            style: TextStyle(
              fontFamily: 'DIN Next LT Arabic',
              fontSize: 30,
              color: const Color(0xff911d74),
              letterSpacing: 0.26999999999999996,
              fontWeight: FontWeight.w700,
              height: 2.7666666666666666,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),

          ),
          Text(
            'لألعــــــــاب الأطفــــــــــــال',
            style: TextStyle(
              fontFamily: 'DIN Next LT Arabic',
              fontSize: 20,
              color: const Color(0xff949494),
              letterSpacing: 0.18,
              height: 2.15,
            ),


          )

        ],
      ),
    );
  }
}
