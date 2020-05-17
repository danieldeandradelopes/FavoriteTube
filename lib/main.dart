import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:youtube_favorite/blocs/favorite_bloc.dart';
import 'package:youtube_favorite/blocs/videos_bloc.dart';
import 'package:youtube_favorite/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: VideosBloc(),
        child: BlocProvider(
          bloc: FavoriteBloc(),
          child: MaterialApp(
            title: 'FavoriTube',
            home: Home(),
            debugShowCheckedModeBanner: false,
          ),
        ));
  }
}
