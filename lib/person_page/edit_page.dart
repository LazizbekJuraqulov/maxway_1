import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxway/home_page/bottonnavbar.dart';
import 'package:maxway/person_page/person_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController? _controller;
  TextEditingController? _editingController;
  TextEditingController? _textEditingController;
  @override
  void initState() {
    _controller=TextEditingController(text: "Alisher");
    _editingController=TextEditingController(text: "Toxirov");
    _textEditingController=TextEditingController(text: "+998 90 1234567");
    super.initState();
  }
  List profil=["Имя","Фамилия","Номер"];
  List list=List.generate(3, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/stroke.svg"),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Редактировать профиль",
          style: TextStyle(color: Colors.black, fontSize: 18,fontWeight:FontWeight.w600),
        ),),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("${profil[0]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff818C99) ),),
                  SizedBox(height: 4,),
                  Container(height: 48,padding: EdgeInsets.only(top: 14,left: 12,bottom: 14),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xffffffff)),
                    child: TextField(
                    controller: _controller,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,

                      ),
                    ),
                  )


                ],
              ),
            ),
            SizedBox(height: 12,),
             Container(
              margin: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("${profil[1]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff818C99) ),),
                  SizedBox(height: 4,),
                  Container(height: 48,padding: EdgeInsets.only(top: 14,left: 12,bottom: 14),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xffffffff)),
                    child: TextField(
                    controller: _editingController,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,

                      ),
                    ),
                  )


                ],
              ),
            ),
            SizedBox(height: 12,),
             Container(
              margin: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("${profil[2]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff818C99) ),),
                  SizedBox(height: 4,),
                  Container(height: 48,padding: EdgeInsets.only(top: 14,left: 12,bottom: 14),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xffffffff)),
                    child: TextField(
                    controller: _textEditingController,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,

                      ),
                    ),
                  )


                ],
              ),
            ),
          ],
        )
      
    );
    
  }
}