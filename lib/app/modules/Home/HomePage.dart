import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/data/models/movie.dart';
import 'package:flutter_pattern_example/app/modules/Home/HomeController.dart';
import 'package:flutter_pattern_example/app/modules/Home/local_widgets/Movie_item.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: _.logOut,
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemBuilder: (context, index) {
              final Movie movie = _.movies[index];
              return MovieItem(movie: movie);
            },
            itemCount: _.movies.length,
          ),
        ),
      ),
    );
  }
}
