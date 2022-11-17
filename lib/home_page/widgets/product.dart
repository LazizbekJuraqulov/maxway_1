import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxway/home_page/bottonnavbar.dart';
import 'package:maxway/home_page/home_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int son=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        leading: IconButton(onPressed: (){
          Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => BottomNav(),
                ),
                (Route<dynamic> route) => false,
              );
        }, 
        icon:SvgPicture.asset("assets/icons/stroke.svg"),
        
         ),
      
        centerTitle: true,
         elevation: 0.5,
        backgroundColor: Color(0xffffffff),
        iconTheme: IconThemeData(color: Color(0xff000000),),
        title: Text("Бургеры",style: TextStyle(fontSize: 20,color: Color(0xff130F26)),),
      ),
      body: Container(child: Column(
        children: [
          Expanded(
            
            child: Container(
            
              child: Image.asset("assets/rasmlar/foto.png",colorBlendMode: BlendMode.clear,),
            )),
            Expanded(child: Container(
              color: Color(0xfffffffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Column(children: [ Padding(
                    padding: const EdgeInsets.only(top: 12,left: 12,right: 12),
                    child: Text("Макс Бургер",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff000000)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12),
                    child: Text("Закручен со вкусом! Кусочки нежнейшего куриногофиле в хрустящей остерой чили оригинальнойпанировке с сочными листьями салата, кусочкамипомидора и нежным соусом мы завернули впшеничную лепешку и поджарили в тостере",style: TextStyle(fontSize: 17,color: Color(0xff818C99)),),
                  ),],),
                  Container(
                    height: 102,
                    padding: EdgeInsets.only(top: 12,right: 12,left: 12),
                    child:Row(
                      children: [
                        InkWell(
                          onTap: (){
                            son--;
                            setState(() {
                              
                            });},
                          child: Container(
                            width: 44,
                            height: 44,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),color: Color(0xffF6F8FB),
                            ),
                            child:Image.asset("assets/rasmlar/Vector.png"),
                          ),),
                        
                        Container(
                            width: 44,
                            height: 44,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),color: Color(0xfffffffff),
                            ),
                            child:Text("$son",style: TextStyle(fontSize: 24,color: Color(0xff000000)),) 
                            
                            
                          ),
                        
                        InkWell(
                          onTap: (){
                            son++;
                            setState(() {
                              
                            });
                          },
                          child: Container(
                            width: 44,
                            height: 44,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),color: Color(0xffF6F8FB),
                            ),
                            child:Image.asset("assets/rasmlar/plyus.png"),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 202,
                          height: 44,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 12,top: 14,bottom: 14,right: 12),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff51267D)),
                          child: Row(
                            children: [
                            Text("Добавить",style: TextStyle(fontSize: 16,color: Color(0xffffffff))),
                            SizedBox(width: 22,),
                            Text("25 000 сум",style: TextStyle(fontSize: 16,color: Color(0xffffffff)),),
                          ],),
                        )

                      ],
                    ) ,)
                ],
              ),

            ))
        ],
      ),),
    );
    
  }
}