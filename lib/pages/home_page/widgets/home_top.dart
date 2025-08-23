import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/pages/detail_page/detail_page.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('가장 인기있는', style: TextStyle(fontSize: 18)),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              toDetailPage(context);
            },
            child: Hero(
              tag: 'movie-tap',
              child: AspectRatio(
                aspectRatio: 1 / 1.55,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Image.network(
                    'https://picsum.photos/200/300',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void toDetailPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return DetailPage();
      },
    ),
  );
}
