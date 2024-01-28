import 'package:flutter/material.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/movie_screen_component/similar_movies_component.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/movie_screen_component/movies_poster_component.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/movie_screen_component/movies_cast_component.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/movie_screen_component/movies_about_component.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/movie_screen_component/movies_gallery_component.dart';

import '../../components/movie_screen_component/movies_review_component.dart';
import '../../model/actor_data_model.dart';
import '../../model/movie_reviews_model.dart';

class MovieDetailScreen extends StatefulWidget {
  final int index;

  MovieDetailScreen({required this.index});

  State<MovieDetailScreen> createState() => MovieDetailScreenState();
}

class MovieDetailScreenState extends State<MovieDetailScreen> {
  List<ActorDataModel> actorsDetails = getActorsDetail();
  late ActorDataModel actorsData;
  List<MovieDataModel> movieDetails = getMoviesDetail();
  late MovieDataModel movieData;
  List<MovieDataModel> movieReviews = getMovieReviews();
  late MovieDataModel movieReview;

  void initState() {
    actorsData = actorsDetails[widget.index];
    movieData = movieDetails[widget.index];
    movieReview = movieReviews[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 8),
        scrollDirection: Axis.vertical,
        child: Wrap(
          runSpacing: 24,
          children: [
            MoviesPosterComponent(moviePoster: movieData),
            MoviesAboutComponent(movieAbout: movieData),
            MoviesGalleryComponent(),
            MoviesCastComponent(),
            MoviesReviewComponent(movieReview: movieData, reviewsOfIndex: widget.index),
            SimilarMoviesComponent(),
          ],
        ),
      ),
    );
  }
}

/*,*/

/**/
