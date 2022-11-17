import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CostPage extends StatefulWidget {
  const CostPage({Key? key}) : super(key: key);

  @override
  State<CostPage> createState() => _CostPageState();
}

class _CostPageState extends State<CostPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xffE7E9E8),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        "2500",
        style: TextStyle(fontSize: 15),
      ),
    );
    
  }
}