import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/detail_page.dart';

void toDetailPage(BuildContext context, int id) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return DetailPage(id: id);
      },
    ),
  );
}
