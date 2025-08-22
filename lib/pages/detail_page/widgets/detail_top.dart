import 'package:flutter/material.dart';

class DetailTop extends StatelessWidget {
  const DetailTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1 / 1.55,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.network(
              'https://picsum.photos/200/300',
              fit: BoxFit.cover,
            ),
          ),
        ),
        
      ],
    );
  }
}
