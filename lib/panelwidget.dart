import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeniproject/textwidget.dart';

class panelwidget extends StatelessWidget {
  const panelwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          height: 240,
          width: 240,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red,image: DecorationImage(image: AssetImage("images/yemek1.jpg"),fit: BoxFit.cover)),
        ),
        Positioned(
          left: 30,
          top: 30,
          child: Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            height: 20,
            constraints: BoxConstraints(
              maxWidth: 200
            ),
            decoration: BoxDecoration(color: Colors.white38,borderRadius: BorderRadius.circular(15)),
            child: Boldtextwidget(text: 'New Opportunitys', color: Colors.black,size: 15,)
          ),
        ),
        Positioned(
          left: 30,
          bottom: 30,
          child: Container(
            height: 25,
            width: 83,
            decoration: BoxDecoration(color: Colors.white38,borderRadius: BorderRadius.circular(15)),
            child: const Row(
              children: [
                SizedBox(width: 2,),
                Icon(Icons.location_on),
                SizedBox(width: 8,),
                Text("1.2 km")
              ],
            ),
          ),
        )
      ],
    );
  }
}
