import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../bottonnavbar.dart';

class ActionPage extends StatelessWidget {
  String rasm;

  ActionPage(this.rasm, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => BottomNav(),
              ),
              (Route<dynamic> route) => false,
            );
          },
          icon: SvgPicture.asset("assets/icons/stroke.svg"),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black),
        title: const Text(
          "Акции",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8.5, right: 12, top: 12),
        height: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 228,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("$rasm")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Рамазан-сет",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff040415),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    """Сочное донар-блюдо, финики и минеральная вода – вкусный и сытный набор для Ифтара! Акция действует во всех филиалах и на заказы с доставкой. Пусть в этот светлый месяц вам и вашим близким сопутствует счастье""",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
