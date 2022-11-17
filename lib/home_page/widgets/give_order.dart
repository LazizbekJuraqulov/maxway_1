import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maxway/backet_page/orders_page.dart';

class GiveOrderPage extends StatefulWidget {
  const GiveOrderPage({Key? key}) : super(key: key);

  @override
  State<GiveOrderPage> createState() => _GiveOrderPageState();
}

class _GiveOrderPageState extends State<GiveOrderPage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return OrderPage();
        }));
      },
      child: Container(
                width: MediaQuery.of(context).size.width*1,
                height: 72,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xffffffff)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xff51267D),borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 24,
                          height: 24,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 218, 184, 224),
                            borderRadius: BorderRadius.circular(12)),child: Text("1",style: TextStyle(fontSize: 13,color: Color(0xffffffff)),),
                        ),
                      ),
                      SizedBox(width: 50),
                      Padding(
                        padding: const EdgeInsets.only(top: 16,bottom: 16,),
                        child: Text("Корзина",style: TextStyle(fontSize: 15,color: Color(0xffffffff),)),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(top: 16,bottom: 16,right: 12),
                        child: Text("132 400 сум",style: TextStyle(fontSize: 15,color: Color(0xffffffff),)),
                      ),
                      
    
                    ],),
                  ),
                ),
              ),
    ); 
    
  }
}