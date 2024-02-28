import 'package:flutter/material.dart';

class SendPackageWidget extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  // final TextEditingController controllers;
  const SendPackageWidget({
    super.key,
    this.inputType = TextInputType.text,
    required TextEditingController controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 32,
      padding: EdgeInsets.only(top: 5),
      margin: EdgeInsets.symmetric(vertical: 6) ,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: Color(0xffcfcfcf),
            blurRadius: 2,
            offset: const Offset(0,4), 
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          fillColor: Colors.white,
          hintStyle: const TextStyle(
            color: Color(0xffcfcfcf), 
            fontSize: 14),
        ),
      ),
    );
  }
}