import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeniproject/textwidget.dart';

class PanelW extends StatelessWidget {
  final Map<String,dynamic> recipe;
  const PanelW({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          height: 240,
          width: 240,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red,image: DecorationImage(image: AssetImage('images/${recipe['image']}'),fit: BoxFit.cover)),
        ),
        Positioned(
          left: 30,
          top: 30,
          child: Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            height: 20,
            constraints: const BoxConstraints(
              maxWidth: 200
            ),
            decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(15)),
            child: Boldtextwidget(text:'${recipe['string']}', color: Colors.deepOrange,size: 15,)
          ),
        ),
        Positioned(
          left: 30,
          bottom: 30,
          child: Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(15)),
            child:  Row(
              children: [
                SizedBox(width: 2,),
                Icon(Icons.restaurant_outlined,color: Colors.deepOrange,),
                SizedBox(width: 8,),
                Text('${recipe['prep']}')
              ],
            ),
          ),
        )
      ],
    );
  }
}
