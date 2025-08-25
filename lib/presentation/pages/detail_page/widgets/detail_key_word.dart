import 'package:flutter/material.dart';

class DetailKeyWord extends StatelessWidget{
  const DetailKeyWord({super.key, required this.keyWord});
  final String keyWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(keyWord, style: TextStyle(color: Colors.lightBlue)),
    );
  }}