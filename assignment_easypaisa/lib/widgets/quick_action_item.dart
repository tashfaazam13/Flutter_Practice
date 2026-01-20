import 'package:flutter/material.dart';

class QuickAction extends StatelessWidget {
  // properties
  IconData actionIcon;
  String actionText;
  String? subText;

  QuickAction({
    required this.actionIcon, 
    required this.actionText, 
    this.subText
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(actionIcon, size: 22),
          SizedBox(height: 4,),
          Text(actionText, style: TextStyle(fontSize: 12)),
          if(subText != null)
          Text(subText!, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
