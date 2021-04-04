import 'package:example/bloc/api_bloc.dart';
import 'package:example/model/movie_response.dart';
import 'package:flutter/material.dart';
import 'package:vento/vento.dart';
import 'package:example/ui/widget/data_widget.dart';

class NormalPage extends StatefulWidget {
  @override
  _NormalPageState createState() => _NormalPageState();
}

class _NormalPageState extends State<NormalPage> {
  MovieBloc movieBloc = MovieBloc();

  @override
  void initState() {
    movieBloc.getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: VentoBlocBuilder<MovieBloc, MovieResponse>(
        cubit: movieBloc,
        dataWidget: (value, isNextLoading) => MovieWidget(value.results),
        errorWidget: (error) => Center(child: Text(error.errorMessage)),
        loadingWidget: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }


}
