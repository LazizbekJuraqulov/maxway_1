import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        iconTheme: IconThemeData(color: Color(0xff000000),),
        title: Text("Бургеры",style: TextStyle(fontSize: 17,color: Color(0xff130F26)),),
      ),
      body: Container(child: Column(
        children: [
          Expanded(child: Container()),
        ],
      ),),
    );
    
  }
}