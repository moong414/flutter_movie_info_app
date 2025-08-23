import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/presentation/pages/home_page/widgets/home_movie_list.dart';
import 'package:flutter_movie_info_app/presentation/pages/home_page/widgets/home_rank_list.dart';
import 'package:flutter_movie_info_app/presentation/pages/home_page/widgets/home_top.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HomeTop(),
            HomeMovieList(secTit: '현재 상영중'),
            HomeRankList(secTit: '인기순'),
            HomeMovieList(secTit: '평점 높은순'),
            HomeMovieList(secTit: '개봉예정'),
          ],
        ),
      ),
    );
  }
}
