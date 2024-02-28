import 'package:flutter/material.dart';

class ProofileWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;

  const ProofileWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 9),
      child: Container(
        width: double.infinity,
        height: 62,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor),
            const SizedBox(width: 10),
            SizedBox(
              width: 250,
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(58, 58, 58, 1),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right_sharp),
          ],
        ),
      ),
    );
  }
}
