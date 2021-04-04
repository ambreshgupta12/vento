import 'package:example/bloc/diff_response_state_bloc.dart';
import 'package:example/model/movie_response.dart';
import 'package:example/ui/widget/data_widget.dart';
import 'package:flutter/material.dart';
import 'package:vento/vento.dart';

class NormalWithDiffResPage extends StatefulWidget {
  @override
  _NormalWithDiffResPageState createState() => _NormalWithDiffResPageState();
}

class _NormalWithDiffResPageState extends State<NormalWithDiffResPage> {
  MovieBlocWithDiffResState movieBloc = MovieBlocWithDiffResState();

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
      body: VentoBlocBuilder<MovieBlocWithDiffResState, List<Movie>>(
        cubit: movieBloc,
        dataWidget: (value, isNextLoading) => MovieWidget(value),
        errorWidget: (error) => Center(child: Text(error.errorMessage)),
        loadingWidget: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
