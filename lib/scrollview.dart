import 'package:flutter/material.dart';
import 'package:yeniproject/textwidget.dart';
class horizontalwidget extends StatelessWidget {
  final Map<String,dynamic> food;
  const horizontalwidget({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 250,
      height: 230,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:  Color(0xFFEF9A9A)),
      child: Column(
        children: [
          Container(
            width: 250,
            height: 140,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage('images/${food['image']}'),fit: BoxFit.cover)),
          ),
          const SizedBox(height: 10,),
          Container(
                margin: EdgeInsets.only(left: 15),
                  child:
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Boldtextwidget(text: 'DinerHouse', color: Colors.white, size: 23),
                    ],
                  )),

        ],
      ),
    );
  }
}
