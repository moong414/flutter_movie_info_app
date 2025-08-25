import 'package:flutter/material.dart';

class DetailTop extends StatelessWidget {
  const DetailTop({super.key, required this.posterPath});
  final String posterPath;

  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: 'movie-tap',
          child: AspectRatio(
            aspectRatio: 1 / 1.55,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.network(
                posterPath.isNotEmpty ? 
                'https://image.tmdb.org/t/p/w600_and_h900_bestv2$posterPath'
                : 'https://picsum.photos/200/300',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}
