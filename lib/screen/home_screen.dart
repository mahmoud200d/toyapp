import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToyApp, ToyAppState>(
      listener: (context, index) {},
      builder: (context, index) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xFF6D2B70),
              leading: SvgPicture.asset(
                'assets/icon/component _4.svg',
                fit: BoxFit.scaleDown,
              ),
              actions: [
                Icon(
                  Icons.notifications_none_outlined,
                  size: 36,
                ),
              ]),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(),
                  accountName: Text(
                    'معرض الرياض',
                    style: TextStyle(
                      fontFamily: 'DIN Next LT Arabic',
                      fontSize: 25,
                      color: const Color(0xff911d74),
                      letterSpacing: 0.22499999999999998,
                      fontWeight: FontWeight.w700,
                      height: 2.32,
                    ),
                  ),
                  accountEmail: Text(
                    'لألعــــــــاب الأطفــــــــــــال',
                    style: TextStyle(
                      fontFamily: 'DIN Next LT Arabic',
                      fontSize: 18,
                      color: const Color(0xff949494),
                      letterSpacing: 0.16199999999999998,
                      height: 4.611111111111111,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                  currentAccountPicture: SvgPicture.asset(
                    'assets/icon/logo.svg',
                    height: 78,
                    width: 123,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 20),
                    color: Color(0xFF6D2B70),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: const Color(0xff622665),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              Text(
                                'تسجيل دخول',
                                style: TextStyle(
                                  fontFamily: 'DIN Next LT Arabic',
                                  fontSize: 18,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.25714285469055176,
                                  fontWeight: FontWeight.w300,
                                  height: 1,
                                ),
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          title: Text(
                            'الرئيسية',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 18,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.25714285469055176,
                              fontWeight: FontWeight.w300,
                              height: 1.722222222222222,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.storefront_rounded,
                            color: Colors.white,
                          ),
                          title: Text(
                            'العارضين',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 18,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.25714285469055176,
                              fontWeight: FontWeight.w300,
                              height: 1.722222222222222,
                            ),
                          ),
                        ),
                        ListTile(leading: SvgPicture.string(
                          '<svg viewBox="0.0 0.0 16.0 16.0" ><path  d="M 6.992236137390137 4.085948944091797 L 4.831916809082031 0.4856263399124146 C 4.651236057281494 0.1843577921390533 4.325710773468018 4.132600224693306e-06 3.974415063858032 0 L 0.5009671449661255 0 C 0.09627846628427505 0 -0.1405972093343735 0.4553137719631195 0.09127846360206604 0.7868771553039551 L 3.568475961685181 5.754390716552734 C 4.497228622436523 4.886576175689697 5.678481578826904 4.29094934463501 6.992236137390137 4.085948944091797 Z M 15.49913501739502 0 L 12.0256872177124 0 C 11.67443656921387 0 11.34881114959717 0.1843755096197128 11.16818523406982 0.4856263399124146 L 9.007866859436035 4.085948944091797 C 10.32161998748779 4.29094934463501 11.50287342071533 4.886575698852539 12.43162727355957 5.754078388214111 L 15.90882396697998 0.7868771553039551 C 16.14070129394531 0.4553137719631195 15.90382385253906 0 15.49913501739502 0 Z M 8.000051498413086 5.000013828277588 C 4.962542057037354 5.000013828277588 2.500035285949707 7.462520599365234 2.500035285949707 10.50002861022949 C 2.500035285949707 13.53753757476807 4.962542057037354 16.00004386901855 8.000051498413086 16.00004386901855 C 11.03756046295166 16.00004386901855 13.50006771087646 13.53753757476807 13.50006771087646 10.50002861022949 C 13.50006771087646 7.462520599365234 11.03756046295166 5.000013828277588 8.000051498413086 5.000013828277588 Z M 10.89130973815918 9.914402008056641 L 9.70599365234375 11.0694055557251 L 9.986307144165039 12.70128536224365 C 10.03630638122559 12.9937858581543 9.728180885314941 13.21722412109375 9.46599292755127 13.07909774780273 L 8.000051498413086 12.30878257751465 L 6.534421920776367 13.07909774780273 C 6.271921634674072 13.21816253662109 5.964107990264893 12.99347305297852 6.014108180999756 12.70128536224365 L 6.294421195983887 11.0694055557251 L 5.109105587005615 9.914402008056641 C 4.895979881286621 9.706901550292969 5.013792991638184 9.344712257385254 5.307543277740479 9.302212715148926 L 6.945986270904541 9.063462257385254 L 7.678175449371338 7.578457832336426 C 7.744113445281982 7.44470739364624 7.871613502502441 7.378769874572754 7.999426364898682 7.378769874572754 C 8.127863883972168 7.378769874572754 8.256301879882812 7.445645332336426 8.322239875793457 7.578457832336426 L 9.05443000793457 9.063462257385254 L 10.69287204742432 9.302212715148926 C 10.98662281036377 9.344712257385254 11.10443592071533 9.706901550292969 10.89130973815918 9.914402008056641 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                          title: Text(
                            'الرعاة',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 18,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.25714285469055176,
                              fontWeight: FontWeight.w300,
                              height: 1.722222222222222,
                            ),
                          ),
                            ),
                        ListTile(
                          leading: SvgPicture.string(
                            '<svg viewBox="0.0 3.0 16.0 10.7" ><path transform="translate(0.0, -1.5)" d="M 3.555555582046509 7.166666030883789 L 12.44444465637207 7.166666030883789 L 12.44444465637207 12.5 L 3.555555582046509 12.5 L 3.555555582046509 7.166666030883789 Z M 14.66666698455811 9.833333015441895 C 14.66666698455811 10.56972217559814 15.26361179351807 11.16666603088379 16 11.16666603088379 L 16 13.83333301544189 C 16 14.56972217559814 15.40305519104004 15.16666603088379 14.66666698455811 15.16666603088379 L 1.333333373069763 15.16666603088379 C 0.5969444513320923 15.16666603088379 0 14.56972217559814 0 13.83333301544189 L 0 11.16666603088379 C 0.7363889217376709 11.16666603088379 1.333333373069763 10.56972217559814 1.333333373069763 9.833333015441895 C 1.333333373069763 9.096943855285645 0.7363889217376709 8.5 0 8.5 L 0 5.833333015441895 C 0 5.096944332122803 0.5969444513320923 4.5 1.333333373069763 4.5 L 14.66666698455811 4.5 C 15.40305519104004 4.5 16 5.096944332122803 16 5.833333015441895 L 16 8.5 C 15.26361179351807 8.5 14.66666698455811 9.096943855285645 14.66666698455811 9.833333015441895 Z M 13.33333396911621 6.944443702697754 C 13.33333396911621 6.576250076293945 13.03486156463623 6.277777671813965 12.66666698455811 6.277777671813965 L 3.333333492279053 6.277777671813965 C 2.965139150619507 6.277777671813965 2.666666746139526 6.576250076293945 2.666666746139526 6.944443702697754 L 2.666666746139526 12.72222232818604 C 2.666666746139526 13.09041690826416 2.965139150619507 13.38888931274414 3.333333492279053 13.38888931274414 L 12.66666698455811 13.38888931274414 C 13.03486156463623 13.38888931274414 13.33333396911621 13.09041690826416 13.33333396911621 12.72222232818604 L 13.33333396911621 6.944443702697754 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                            allowDrawingOutsideViewBox: true,
                          ),
                          title: Text(
                            'التذاكر',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 18,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.25714285469055176,
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.flight,color: Colors.white,),
                          title: Text(
                            'السفرو الفناديق',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 18,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.25714285469055176,
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color:  Colors.white),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 1030.svg',
                                fit: BoxFit.scaleDown,
                                  color:  Colors.white
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color: Colors.white),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 1029.svg',
                                fit: BoxFit.scaleDown,
                                  color:  Colors.white
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color:  Colors.white),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 18.svg',
                                fit: BoxFit.scaleDown,
                                  color:  Colors.white
                              ),

                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color:Colors.white),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 1027.svg',
                                fit: BoxFit.scaleDown,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 350,
                      child: Stack(
                        children: [
                          Container(
                            color: Color(0xFF6D2B70),
                            height: 300,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SvgPicture.asset('assets/icon/Group.svg'),
                                SvgPicture.asset('assets/icon/Group 278.svg'),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset('assets/icon/logo.svg'),
                                Text(
                                  'معرض الرياض',
                                  style: TextStyle(
                                    fontFamily: 'DIN Next LT Arabic',
                                    fontSize: 25,
                                    color: const Color(0xffffffff),
                                    letterSpacing: 0.22499999999999998,
                                    fontWeight: FontWeight.w700,
                                    height: 1.32,
                                  ),
                                ),
                                Text(
                                  'لألعــــــــاب الأطفــــــــــــال',
                                  style: TextStyle(
                                    fontFamily: 'DIN Next LT Arabic',
                                    fontSize: 18,
                                    color: const Color(0xffd4d4d4),
                                    letterSpacing: 0.16199999999999998,
                                    height: 1.611111111111111,
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 120,
                                          height: 110,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffffffff),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xfff0f0f0)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x21a92f86),
                                                offset: Offset(0, 3),
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff911d74),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              9999.0, 9999.0)),
                                                ),
                                                child: Image.asset(
                                                    'assets/images/component_1.png'),
                                                height: 40,
                                                width: 40,
                                              ),
                                              Text(
                                                'التذاكر',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'DIN Next LT Arabic',
                                                  fontSize: 18,
                                                  color:
                                                      const Color(0xff911d74),
                                                  letterSpacing: 0.36,
                                                  fontWeight: FontWeight.w500,
                                                  height: 2.11111111111111,
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 10);
                                      },
                                      itemCount: 3),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 320,
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset('assets/images/Group 288.png');
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox();
                      },
                      itemCount: 2),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'المساعدة',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 20,
                            color: const Color(0xff911d74),
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w700,
                            height: 3.25,
                          ),
                        ),
                      ),
                      Align(
                        child: Text(
                          'سيسعد فريق المبيعات لدينا بالإجابة على أي أسئلة قد تكون لديك ومساعدتك في التسجيل',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 18,
                            color: const Color(0xff000000),
                            height: 1.5555555555555556,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 230,
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset('assets/images/Group 2907.png');
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox();
                      },
                      itemCount: 3),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'جديد المدونة',
                    style: TextStyle(
                      fontFamily: 'DIN Next LT Arabic',
                      fontSize: 20,
                      color: const Color(0xff911d74),
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          'assets/images/Group 290.png',
                          fit: BoxFit.cover,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 0,
                        );
                      },
                      itemCount: 3),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
