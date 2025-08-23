import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/widgets/detai_info.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/widgets/detail_top.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            DetailTop(),
            DetailInfo(),
          ],
        ),
      ),
    );
  }
}
