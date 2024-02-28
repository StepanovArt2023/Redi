import 'package:flutter/material.dart';

class TopUpButton extends StatelessWidget {
  final Widget icon;
  final String txt;
  final VoidCallback onPressed; 
  
  const TopUpButton({
    Key? key,
    required this.icon,
    required this.txt,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xff0560fa),
            child: IconButton(
              onPressed: onPressed, // Вызываем функцию onPressed при нажатии
              icon: icon,
            ),
          ),
          SizedBox(height: 4),
          Text(
            txt,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff3a3a3a),
            ),
          ),
        ],
      ),
    );
  }
}
