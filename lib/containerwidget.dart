import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class containerwidget extends StatelessWidget {
  final String text;
  final Icon icon;
  const containerwidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      constraints: BoxConstraints(
        maxHeight: 200
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black
      ),
      child: Row(
        children: [
          SizedBox(width: 10,),
          icon,
          SizedBox(width: 10,),
          Text(text,style: TextStyle(color: Colors.white),),
          SizedBox(width:10,)
        ],
      )
    );
  }
}
