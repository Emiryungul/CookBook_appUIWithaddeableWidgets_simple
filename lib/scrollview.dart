import 'package:flutter/material.dart';
class horizontalwidget extends StatelessWidget {
  const horizontalwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 250,
      height: 230,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red),
      child: Column(
        children: [
          Container(
            width: 250,
            height: 140,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage("images/yemek4.jpg"),fit: BoxFit.cover )),
          )
        ],
      ),
    );
  }
}
