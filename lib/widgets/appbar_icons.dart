import 'package:flutter/material.dart';

class MenuBarWidgets extends StatelessWidget {
  const MenuBarWidgets({super.key,  required this.text, this.color = Colors.white}) ;
  
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      height: 50,
      // color: Colors.red,
      child: Row(
        children: [
          Container(
            width: 95,
            height: 45,
            // color: Colors.amberAccent,
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Center(
                    child: Text(
                      text,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 16, color: color),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 3,
                  color: color==Colors.white ? null : color,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
