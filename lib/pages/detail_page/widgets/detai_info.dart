import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/pages/detail_page/widgets/detail_info_box.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Moana 2',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text('2024-11-27'),
            ],
          ),
          SizedBox(height: 4),
          Text(
            'The ocean is calling the back. ',
            style: TextStyle(fontSize: 15),
          ),
          Text('100분'),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: Colors.white30),
              ),
            ),
            child: Wrap(
              spacing: 4,
              runSpacing: 4,
              children: [
                keyWord('Animation'),
                keyWord('Animation'),
                keyWord('Animation'),
                keyWord('Animation'),
                keyWord('Animation'),
                keyWord('Animation'),
                keyWord('Animation'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white30)),
            ),
            child: Text(
              'The ocean is calling the back. The ocean is calling the back. The ocean is calling the back. The ocean is calling the back. The ocean is calling the back. The ocean is calling the back. ',
            ),
          ),
          SizedBox(height: 10),
          Text('흥행정보', style: TextStyle(fontSize: 16)),
          SizedBox(height: 12),
          SizedBox(
            height: 80,
            child: ListView.separated(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DetailInfoBox();
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 8);
              },
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 80,
            child: ListView.separated(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Opacity(
                  opacity: 0.9,
                  child: Image.network(
                    'https://picsum.photos/200/300',
                    fit: BoxFit.cover,),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 8);
              },
            ),
          ),
        ],
      ),
    );
  }

  Container keyWord(String word) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(word, style: TextStyle(color: Colors.lightBlue)),
    );
  }
}
