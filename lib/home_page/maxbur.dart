import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:maxway/home_page/cost.dart';
import 'package:maxway/home_page/product.dart';

class MaxBurPage extends StatefulWidget {
 final ValueChanged<bool> unic;
 
  
   MaxBurPage({required this.unic,});

  @override
  State<MaxBurPage> createState() => _MaxBurPageState();
}

class _MaxBurPageState extends State<MaxBurPage> {
  List removes=List.generate(6, (index) => false);
   List<bool> list5 = List.generate(6, (index) => true);
  List<int> list4 = List.generate(6, (index) => 1);
  late int kup;
  late int narx = 25000;
  bool clor = true;
  late int summa = 0;
  int bir=1;
  bool food=true;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductPage();
                }));
              },
              child: Container(
                width: 170,
                height: 222,
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 173,
                      height: 124,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffEEE9F2),
                      ),
                      child:
                          Image(image: AssetImage("assets/rasmlar/burger.png")),
                    ),
                   const  Padding(
                      padding: EdgeInsets.only(
                          top: 16, left: 8, bottom: 14, right: 75),
                      child: Text(
                        "Макс Бургер",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff000000)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        list5[index] = !list5[index];
                        food=false;
                        widget.unic(food);
                        setState(() {});
                      },
                      child: Container(
                          width: 154,
                          height: 40,
                          padding:
                              EdgeInsets.only(left: 8, right: 8, bottom: 8),
                          child: list5[index]
                              ? CostPage()
                              : Container(
      width: 154,
      height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     InkWell(onTap: (){
            list4[index]--;
             if (list4[index] < bir) {
              food=false;
              widget.unic(food);
              list5[index]=!list5[index];
              list4[index] = bir;
             setState(() {
               
             });
            }
            setState(() {});   
     },child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffE7E9E8)
          ),
          child: Icon(Icons.remove,),
        ),),
        Container(
          alignment: Alignment.center,
          
          color: Colors.white,
          child: Text(
            "${list4[index]}",
            style: TextStyle(fontSize: 15),
          ),
        ),
      InkWell(
        onTap: () {
          
            clor=!clor;
            list4[index]++;
            setState(() {});
          
        },
        child:Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffE7E9E8)
          ),
          child: Icon(Icons.add),
        ),)
      ],
    ))),
                    )
                  ],
                ),
              ),
            );
          }, childCount: 6),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 2,
              maxCrossAxisExtent: 300,
              mainAxisExtent: 240),
        );
    
  }
}