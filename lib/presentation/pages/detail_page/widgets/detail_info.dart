import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/detail_page_view_model.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/widgets/detail_info_box.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/widgets/detail_key_word.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailInfo extends ConsumerWidget {
  const DetailInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(detailPageViewModelProvider);
    String thisTitle = ''; //제목
    String thisRelease = ''; //개봉일
    String thisTag = ''; //소개글
    String thisRun = ''; //러닝타임
    List thisGenre = []; //장르
    String thisOverview = ''; //줄거리
    List<String> thisCompanyLogo = []; //협력사로고
    Map<String, dynamic> etcInfo = {};

    if (detail != null) {
      thisTitle = detail.originalTitle;
      thisRelease = detail.releaseDate.toString().split(' ')[0];
      thisTag = detail.tagline;
      thisRun = detail.runtime.toString();
      thisGenre = detail.genres.map((e) => e.name).toList();
      print('thisGenre: $thisGenre==================================');
      thisOverview = detail.overview;
      thisCompanyLogo = detail.productionCompanies
          .map((e) => e.logoPath)
          .toList();
      final addinfo = {
        '평점': detail.voteAverage, //평점
        '평점투표수': detail.voteCount, //평점투표수
        '인기점수': detail.popularity, //인기점수
        '예산': detail.budget, //예산
        '수익': detail.revenue, //수익
      };
      etcInfo.addAll(addinfo..removeWhere((key, value) => value == null));
    }

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                thisTitle,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(thisRelease),
            ],
          ),
          SizedBox(height: 4),
          Text(thisTag),
          Text('$thisRun 분'),
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
              children: List.generate(thisGenre.length, (index) {
                return DetailKeyWord(keyWord: thisGenre[index]);
              }),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white30)),
            ),
            child: Text(thisOverview),
          ),
          SizedBox(height: 10),
          Text('흥행정보', style: TextStyle(fontSize: 16)),
          SizedBox(height: 12),
          SizedBox(
            height: 80,
            child: ListView.separated(
              itemCount: etcInfo.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final key = etcInfo.keys.elementAt(index);
                final value = etcInfo[key];
                return DetailInfoBox(
                  etcTit: key.toString(),
                  etcInfo: value.toString(),
                );
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
              itemCount: thisCompanyLogo.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final logo = thisCompanyLogo[index].toString();
                print('logo: $logo');
                return Container(
                  constraints: BoxConstraints(minWidth: 180, maxHeight: 80),
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  child: Opacity(
                    opacity: 0.9,
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w600_and_h900_bestv2$logo',
                      fit: BoxFit.contain,
                    ),
                  ),
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
}
