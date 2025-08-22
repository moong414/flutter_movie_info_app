import 'package:flutter/material.dart';

class HomeRankList extends StatelessWidget {
  const HomeRankList({super.key, required this.secTit});
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
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/200/300',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      height: 114,
                      left: 0,
                      bottom: 0,
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyle(
                          fontSize: 90,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 5);
              },
            ),
          ),
        ],
      ),
    );
  }
}
