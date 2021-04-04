import 'package:example/bloc/movie_pagination_bloc.dart';
import 'package:example/model/movie_response.dart';
import 'package:example/ui/widget/data_widget.dart';
import 'package:flutter/material.dart';
import 'package:vento/vento.dart';

class PaginationPage extends StatefulWidget {
  @override
  _PaginationPageState createState() => _PaginationPageState();
}

class _PaginationPageState extends State<PaginationPage> {
  MoviePaginationBloc movieBloc = MoviePaginationBloc();
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    movieBloc.getMovies();
    super.initState();
    _controller.addListener(() {
      if (_controller.offset >= _controller.position.maxScrollExtent &&
          !_controller.position.outOfRange) {
        movieBloc.getNextMovies();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: VentoBlocBuilder<MoviePaginationBloc, MovieResponse>(
        cubit: movieBloc,
        dataWidget: (value, isNextLoading) => SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              MovieWidget(
                value.results,
                scrollPhysics: NeverScrollableScrollPhysics(),
                // scrollController: _controller,
                shrinkWrap: true,
              ),
              Visibility(
                  child: Center(
                child: CircularProgressIndicator(),
              ))
            ],
          ),
        ),
        errorWidget: (error) => Center(child: Text(error.errorMessage)),
        loadingWidget: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
