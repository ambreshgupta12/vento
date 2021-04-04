
import 'package:example/bloc/api_bloc.dart';
import 'package:example/model/movie_response.dart';
import 'package:flutter/material.dart';
import 'package:vento/vento.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        dataWidget: (value, isNextLoading) => dataWidget(value.results),
        errorWidget: (error) => Center(child: Text(error.errorMessage)),
        loadingWidget: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget dataWidget(List<Movie> data) {
    return ListView.builder(
      itemCount: data.length,
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
