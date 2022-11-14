import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddRemove extends StatefulWidget {
  int summa;
  int narx;
  int index;
  List list4;
  List<bool> list5;
  bool clor=true;
  int bir;
  List removes;



   AddRemove({Key? key,required this.summa,required this.narx,required this.index,required this.list4,required this.list5,required this.clor,required this.bir,required this.removes}) : super(key: key);
   
     

  @override
  State<AddRemove> createState() => _AddRemoveState();
}

class _AddRemoveState extends State<AddRemove> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 154,
      height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     InkWell(onTap: (){
            widget.list4[widget.index]--;
        

            if (widget.list4[widget.index] < widget.bir) {
              widget.removes[widget.index] = !widget.removes[widget.index];
              widget.list5[widget.index]=!widget.list5[widget.index];
              widget.list4[widget.index] = widget.bir;
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
            "${widget.list4[widget.index]}",
            style: TextStyle(fontSize: 15),
          ),
        ),
      InkWell(
        onTap: () {
          
            widget.clor=!widget.clor;
            widget.list4[widget.index]++;
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
    ));
    
  }
  
}