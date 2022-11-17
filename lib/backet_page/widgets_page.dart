import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({Key? key}) : super(key: key);

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
    int next = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 120,
                    padding: EdgeInsets.only(top: 12, left: 12),
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
                  );
    
  }
}