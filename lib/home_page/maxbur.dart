import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maxway/home_page/addremove.dart';
import 'package:maxway/home_page/cost.dart';
import 'package:maxway/home_page/product.dart';

class MaxBurPage extends StatefulWidget {
 late bool post;
   MaxBurPage(this.post);

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
                        widget.post=!widget.post;
                           
                        setState(() {});
                      },
                      child: Container(
                          width: 154,
                          height: 40,
                          padding:
                              EdgeInsets.only(left: 8, right: 8, bottom: 8),
                          child: list5[index]
                              ? CostPage()
                              : AddRemove(
                                  summa: summa,
                                  narx: narx,
                                  index: index,
                                  list4: list4,
                                  list5: list5,
                                  clor: clor,
                                  bir: bir,
                                  removes: removes,
                                
                                )),
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