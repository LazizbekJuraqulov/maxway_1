import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:maxway/home_page/widgets/cost.dart';
import 'package:maxway/home_page/widgets/product.dart';

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
              child: Padding(
                padding: const EdgeInsets.only(left:12.0,right: 12),
                child: Container(
                  width: 170,
                  height: 222,
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 16, left: 8, ),
                        child: Text(
                          "???????? ????????????",
                          style:
                              TextStyle(fontSize: 17, color: Color(0xff000000)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          list5[index] = !list5[index];
                          food=false;
                          widget.unic(food);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,left: 8,right: 8,top: 14),
                          child: Container(
                              width: 154,
                              height: 40,
                              
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
                food=!food;
             if (list4[index] < bir) {
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
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }, childCount: 6),
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            
              crossAxisCount: 2,
              mainAxisExtent: 228,mainAxisSpacing: 12),
              
        );
    
  }
}