
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit=ToyApp.get(context);

    return BlocConsumer<ToyApp,ToyAppState>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar:AppBar(
              elevation: 0,
              backgroundColor: Color(0xFF6D2B70),
              leading: Icon(Icons.arrow_back_ios),
              title:Text(
                'المدونة',
                style: TextStyle(
                  fontFamily: 'DIN Next LT Arabic',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.4,
                  height: 3.25,
                ),

              )

          ),
          body:ListView.separated(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              itemBuilder: (context,index){
                return Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.network(cubit.blogsModel.items[index].image),
                Column(
                  children: [
                    Text(
                      'معرض الرياض لألعاب ',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                      ),

                    ),
                    Text(
                      '22/04/2022',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        height: 1.75,
                      ),

                    )
                  ],
                )
                  ],
                );
              }, separatorBuilder: (context,index){
            return SizedBox(height: 10,);
          }, itemCount: cubit.blogsModel.items.length),
        );
      },

    );
  }
}
