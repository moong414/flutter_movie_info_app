import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/presentation/pages/home_page/home_page_view_model.dart';
import 'package:flutter_movie_info_app/presentation/pages/widgets/to_detail_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTop extends ConsumerStatefulWidget{
  const HomeTop({super.key});

  @override
  ConsumerState<HomeTop> createState() => _HomeTopState();
}

class _HomeTopState extends ConsumerState<HomeTop> {

  @override
  void initState() {
    super.initState();
    ref.read(homePageViewModelProvider.notifier).fetchPopularMovies();
  }

  @override
  Widget build(BuildContext context) {
    final movie = ref.watch(homePageViewModelProvider);
    String thisPosterPath = ''; //포스터
    int thisId = 0;

    if(movie != null){
      thisPosterPath = movie.results[0].posterPath;
      thisId = movie.results[0].id;
    }

    print('thisPosterPath: $thisPosterPath==================');
    print('thisId: $thisId==================');


    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('가장 인기있는', style: TextStyle(fontSize: 18)),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              toDetailPage(context, thisId);
            },
            child: Hero(
              tag: 'movie-tap',
              child: AspectRatio(
                aspectRatio: 1 / 1.55,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Image.network(
                    thisPosterPath.isNotEmpty?
                    'https://image.tmdb.org/t/p/original$thisPosterPath'
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

