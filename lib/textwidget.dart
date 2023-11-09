import 'package:flutter/cupertino.dart';

class Boldtextwidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const Boldtextwidget({super.key, required this.text, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color,fontSize: size,fontWeight: FontWeight.bold));
  }
}
