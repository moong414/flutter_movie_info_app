import 'package:flutter/material.dart';

class HomeMovieList extends StatelessWidget {
  const HomeMovieList({super.key, required this.secTit});
  final String secTit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(secTit, style: TextStyle(fontSize: 17)),
          SizedBox(height: 15),
          SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://picsum.photos/200/300',
                    fit: BoxFit.cover,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 12);
              },
            ),
          ),
        ],
      ),
    );
  }
}
