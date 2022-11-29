import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PesonalDatals extends StatefulWidget {
  PesonalDatals({Key? key}) : super(key: key);

  @override
  State<PesonalDatals> createState() => _PesonalDatalsState();
}

class _PesonalDatalsState extends State<PesonalDatals>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6D2B70),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 310,
            color: Color(0xFF6D2B70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    border:
                        Border.all(width: 2.0, color: const Color(0xffffffff)),
                  ),
                  child: SvgPicture.asset(
                    'assets/icon/Component 6 – 2.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'الملف الشخصي',
                  style: TextStyle(
                    fontFamily: 'DIN Next LT Arabic',
                    fontSize: 20,
                    color: const Color(0xffffffff),
                    letterSpacing: 0.28571428298950197,
                    height: 2.25,
                  ),
                )
              ],
            ),
          ),
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xFF911D74),
            controller: tabController,
            indicatorWeight: 1,
            labelStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/component_1.png',
                      fit: BoxFit.scaleDown,
                      color: Color(0xFF911D74),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'التذاكر',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 18,
                        color: const Color(0xff911d74),
                        letterSpacing: 0.25714285469055176,
                        height: 1.722222222222222,
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person,
                      color: Color(0xFF911D74),
                      size: 36,
                    ),
                    Text(
                      'الملف الشخصي',
                      style: TextStyle(
                        color: const Color(0xff911d74),
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 18,
                        letterSpacing: 0.25714285469055176,
                        height: 1.722222222222222,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: TabBarView(


                controller: tabController, children: [
              ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (context, index) {
                  return Container(
                    width: 168,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfff5f5f5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset(
                            'assets/images/component_1.png',
                            color: Color(0xFF6D2B70),
                          ),
                          height: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'تذكرة دخول المعرض',
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                height: 1.4,
                              ),
                            ),
                            Text(
                              '15/05/2022',
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 16,
                                color: const Color(0xffc1c1c1),
                                fontWeight: FontWeight.w300,
                                height: 1.75,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                physics: BouncingScrollPhysics(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder:(context,index){
                    return Row (
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


                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10,);
                },


                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
