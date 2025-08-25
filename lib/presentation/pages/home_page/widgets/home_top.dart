import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/presentation/pages/home_page/home_page_view_model.dart';
import 'package:flutter_movie_info_app/presentation/pages/widgets/to_detail_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTop extends ConsumerWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final hvProvider = ref.watch(homePageViewModelProvider)?.results ?? [];
    
    int id = 0;
    String posterPath = '';
    if(hvProvider.isNotEmpty){
      id = hvProvider[0].id;
      posterPath = hvProvider[0].posterPath;
    }

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('가장 인기있는', style: TextStyle(fontSize: 18)),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              toDetailPage(context, id);
            },
            child: Hero(
              tag: 'movie-tap',
              child: AspectRatio(
                aspectRatio: 1 / 1.55,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Image.network(
                    hvProvider.isNotEmpty?
                    'https://image.tmdb.org/t/p/w600_and_h900_bestv2$posterPath'
                    : 'https://picsum.photos/200/300'
                    ,
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

