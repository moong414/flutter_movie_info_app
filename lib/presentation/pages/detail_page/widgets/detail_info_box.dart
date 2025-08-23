import 'package:flutter/material.dart';

class DetailInfoBox extends StatelessWidget {
  const DetailInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 90),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.white30),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('6.949'), Text('평점')],
      ),
    );
  }
}
