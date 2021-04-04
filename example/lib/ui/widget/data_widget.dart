import 'package:example/model/movie_response.dart';
import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  final List<Movie> data;
  final ScrollController scrollController;
final  ScrollPhysics scrollPhysics;
  final bool shrinkWrap;

  const MovieWidget(this.data, {this.scrollController, this.shrinkWrap=false, this.scrollPhysics});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      physics: scrollPhysics,
      itemCount: data.length,
      shrinkWrap: shrinkWrap,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 300,
          width: 300,
          child: Card(
            elevation: 1,
            child: Image.network(
              "https://image.tmdb.org/t/p/w342${data[index].posterPath}",
            ),
          ),
        );
      },
    );
  }
}
