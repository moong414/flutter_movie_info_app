import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/detail_page_view_model.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/widgets/detai_info.dart';
import 'package:flutter_movie_info_app/presentation/pages/detail_page/widgets/detail_top.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPage extends ConsumerStatefulWidget {
  final int id;
  const DetailPage({super.key, required this.id});

  @override
  ConsumerState<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {

  @override
  void initState() {
    super.initState();
    ref.read(detailPageViewModelProvider.notifier).fetchMovieDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final detail = ref.watch(detailPageViewModelProvider);
    String thisPosterPath = '';
    if(detail != null){
      print(detail);
      print(detail.posterPath);
      thisPosterPath = detail.posterPath;
    }

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            DetailTop(posterPath: thisPosterPath,),
            DetailInfo(),
          ],
        ),
      ),
    );
  }
}
