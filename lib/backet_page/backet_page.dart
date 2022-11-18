import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BacketPage extends StatefulWidget {
  const BacketPage({Key? key}) : super(key: key);

  @override
  State<BacketPage> createState() => _BacketPageState();
}

class _BacketPageState extends State<BacketPage>with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Color(0xffffffff),
        centerTitle: false,
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.only(left: 16,bottom: 20,top: 68),
          child: Text("Мои заказы",style: TextStyle(fontSize: 28,color: Color(0xff000000)),),
        ),
        bottom: PreferredSize(preferredSize: Size(400,32),
        child: Padding(
        padding: EdgeInsets.only(left: 13,bottom: 12,right: 19),
          child: Container(
            height: 32,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.91),
              color: Color(0xffEFEFF4),
            ),
            child: TabBar(
              controller: _tabController,
               indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.96), // Creates border
                      color: Colors.white,
                    ),
              tabs: [
                  Text(
                        "История заказов",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        "Текущие заказы",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
            ]),

          ),
        ),),

      ),
      body: Container(
      
        child: TabBarView(
          
          
          controller: _tabController,
          children: [
          Container(
            margin: EdgeInsets.all(12),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text("В прошлом месяцы",style: TextStyle(fontSize: 17,color: Color(0xff000000)),)),
                Container(
                  width: 371,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 12,top: 14,bottom: 6),child: Text("Заказ № 132",style: TextStyle(fontSize: 15,color: Color(0xff000000)),)),
                      Container(
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Padding(padding: EdgeInsets.only(left: 12,),child:Text("39 500 сум",style: TextStyle(fontSize: 15,color: Color(0xff000000)),) ),
                          Padding(padding: EdgeInsets.only(right: 19),child:Image(image: AssetImage("assets/rasmlar/Icon.png")),),
                        ],),
                      ),Padding(padding: EdgeInsets.only(left: 12,bottom: 14,top: 6),child: Text("02.03.2020",style: TextStyle(fontSize: 15,color: Color(0xff818C99)),)),

                    ],
                  ),
                ),
                SizedBox(height: 12,),
                 Container(
                  width: 371,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 12,top: 14,bottom: 6),child: Text("Заказ № 222",style: TextStyle(fontSize: 15,color: Color(0xff000000)),)),
                      Container(
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Padding(padding: EdgeInsets.only(left: 12,),child:Text("40 500 сум",style: TextStyle(fontSize: 15,color: Color(0xff000000)),) ),
                          Padding(padding: EdgeInsets.only(right: 19),child:Image(image: AssetImage("assets/rasmlar/Icon.png")),),
                        ],),
                      ),Padding(padding: EdgeInsets.only(left: 12,bottom: 14,top: 6),child: Text("22.07.2020",style: TextStyle(fontSize: 15,color: Color(0xff818C99)),)),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 144,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                   const Padding(
                      padding:  EdgeInsets.only(top: 16,left: 12),
                      child: Text("Статус заказа №1342",style: TextStyle(fontSize: 20,color: Color(0xff000000),fontWeight: FontWeight.w600),),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(top:4, left: 12),
                      child: Text("Заказ оформлен",style: TextStyle(fontSize: 17,color: Color(0xff51267D),fontWeight: FontWeight.w600),),
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12,bottom: 16,top: 16,),
                        child: Container(
                          width: 44,height: 44,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color(0xff51267D)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.5),
                            child: SvgPicture.asset("assets/icons/ic_save_active.svg"),
                          )),
                      ),
                        const SizedBox(
                          width: 2,
                        ),
                      Container(width: 85,height: 4,color: Color(0xff51267D),),
                       Padding(
                        padding: const EdgeInsets.only(left: 6,bottom: 16,top: 16,),
                        child: Container(
                          width: 44,height: 44,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color(0xffEBEDF0)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.5),
                            child: SvgPicture.asset("assets/icons/ic_bag.svg"),
                          )),
                      ),
                        const SizedBox(
                          width: 6,
                        ),
                      Container(width: 85,height: 4,color: Color(0xff51267D),),
                      
                       Padding(
                        padding: const EdgeInsets.only(left: 6,bottom: 16,top: 16,right: 16),
                        child: Container(
                          width: 44,height: 44,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color(0xffEBEDF0)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.5),
                            child: SvgPicture.asset("assets/icons/ic_square.svg"),
                          )),
                      ),
                    ],)
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    
    );
  }
}