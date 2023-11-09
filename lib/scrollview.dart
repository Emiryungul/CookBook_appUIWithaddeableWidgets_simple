import 'package:flutter/material.dart';
class horizontalwidget extends StatelessWidget {
  const horizontalwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 150,
      height: 230,
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(color: Colors.blue,),
          )
        ],
      ),
    );
  }
}
