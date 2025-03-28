import 'package:flutter/material.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    print((moviesProvider.onDisplayMovies));
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en Cine'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // TODO: CardSwiper
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              // listado de peliculas
              MovieSlider(
                  movies: moviesProvider.popularMovies, title: 'Populares!')
            ],
          ),
        ));
  }
}
