import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxway/backet_page/widgets_page.dart';

import '../home_page/bottonnavbar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool isTrue = true;
  int next = 1;
  int sum = 35000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => BottomNav(),
              ),
              (Route<dynamic> route) => false,
            );
          },
          icon: SvgPicture.asset("assets/icons/stroke.svg"),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Оформить заказ",
          style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: SvgPicture.asset("assets/icons/Delete.svg"),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffffffff),
              ),
              child: Column(
                children: [
                  WidgetPage(),
                  Divider(),
                  Container(
                    height: 120,
                    padding: EdgeInsets.only( left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffffffff)),
                          child: Image.asset("assets/rasmlar/sendvich.png"),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 129,
                                height: 46,
                                child: const Text(
                                  "Клаб сэндвич \"Янгилик\"",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)),
                                )),
                           const SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    next--;
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 33,
                                    height: 33,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffF6F8FB),
                                    ),
                                    child: Image.asset(
                                        "assets/rasmlar/Vector.png"),
                                  ),
                                ),
                                Container(
                                    width: 33,
                                    height: 33,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xfffffffff),
                                    ),
                                    child: Text(
                                      "$next",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff000000)),
                                    )),
                                InkWell(
                                  onTap: () {
                                    next++;
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 33,
                                    height: 33,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffF6F8FB),
                                    ),
                                    child:
                                        Image.asset("assets/rasmlar/plyus.png"),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: 70,right: 12,left: 23),
                          child: Text("129 000 сум",style: TextStyle(fontSize: 13,color: Color(0xff51267D),fontWeight: FontWeight.w600),),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12,right: 12,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Text("Сумма заказа",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,),),
                      Text("234 500 сум",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,),)
                    ],),
                  )

                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff51267D)),
              child: Text("Оформить заказ",style: TextStyle(fontSize: 16,color: Color(0xfffffffff),fontWeight: FontWeight.w600),),
            )
          
          ],
        ),
      ),
    );
  }
}
