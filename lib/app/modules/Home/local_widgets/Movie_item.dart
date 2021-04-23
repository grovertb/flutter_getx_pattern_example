import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/data/models/movie.dart';
import 'package:flutter_pattern_example/app/utils/constants.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        '${Constants.THE_MOVIE_DB_PATH_IMAGE}${movie.posterPath}',
      ),
      title: Text(movie.title),
      subtitle: Text(movie.overview),
    );
  }
}
