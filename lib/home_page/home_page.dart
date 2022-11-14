import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxway/home_page/action_page.dart';
import 'package:maxway/home_page/addremove.dart';
import 'package:maxway/home_page/cost.dart';
import 'package:maxway/home_page/maxbur.dart';
import 'package:maxway/home_page/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list1 = ["Максим бокс", "Донар блюдо", "Хот дог"];
  List foto = [
    "assets/rasmlar/rec3.png",
    "assets/rasmlar/rec2.png",
    "assets/rasmlar/rec1.png"
  ];

   
  List<bool> isTrue = List.generate(13, (index) => false);
  List list = ["Максибокс","Лаваш","Клубный сендвич","Шаурма","Донар Кебаб","Хаги","Бургер","Хотдог","перекус","Гарнир","Двоюродная сестра","Напитки","Десерт"];
  bool post=true;
  @override

  void initState() {
    post=true;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Color(0xffffffff),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
              padding:
                  EdgeInsets.only(top: 60, left: 12, bottom: 16, right: 12),
              child: TextField(
                decoration: InputDecoration(
                  constraints: BoxConstraints(minHeight: 40),
                  hintText: "Поиск",
                  hintStyle: TextStyle(
                    fontSize: 15,
                  ),
                  prefixIcon: Container(
                      width: 14.98,
                      height: 14.98,
                      padding: EdgeInsets.only(
                          top: 12.32, left: 14.31, bottom: 12.7, right: 10.7),
                      child: SvgPicture.asset(
                        "assets/icons/ic_search.svg",
                      )),
                  prefixStyle: TextStyle(
                    color: Color(0xff818C99),
                  ),
                  filled: true,
                  fillColor: Color(0xffF8F6FA),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              )),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            onTap: () {
                              isTrue[index] = !isTrue[index];
                              setState(() {});
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 8, left: 12, bottom: 8, right: 12),
                              height: 36,
                              width: 88,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isTrue[index]
                                    ? Color(0xff51267D)
                                    : Color(0xffffffff),
                              ),
                              child: Text(
                                "${list[index]}",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isTrue[index]
                                        ? Color(0xffffffff)
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 16, left: 12, bottom: 8),
                sliver: SliverToBoxAdapter(
                    child: SizedBox(
                  width: 151,
                  height: 28,
                  child: Text(
                    "Рекомендуем",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                )),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                    height: 88,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ActionPage("${foto[index]}", "${list1[index]}",
                                    "${list1[index]}");
                              }));
                            },
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 7.27),
                                height: 88,
                                width: 112.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("${foto[index]}")),
                                )),
                          );
                        }),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 16, left: 12, bottom: 8),
                sliver: SliverToBoxAdapter(
                    child: SizedBox(
                  width: 151,
                  height: 28,
                  child: Text(
                    "Бургеры",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                )),
              ),
              MaxBurPage(post),
            ]),
          ),
          // Positioned(
          //   bottom: 0,
          //   child:post ? Container(
          //     width: MediaQuery.of(context).size.width*1,
          //     height: 72,
          //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xffffffff)),
          //     child: Padding(
          //       padding: const EdgeInsets.all(12.0),
          //       child: Container(
          //         height: 48,
          //         decoration: BoxDecoration(
          //           color: Color(0xff51267D),borderRadius: BorderRadius.circular(12),
          //         ),
          //       ),
          //     ),
          //   ):SizedBox()),
        ],
      ),
    );}}

