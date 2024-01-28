import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/model/image_data_model.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/movies_screen/movie_detail_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/movies_screen/movie_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

class LatestMoviesComponent extends StatefulWidget {
  State<LatestMoviesComponent> createState() => LatestMoviesComponentState();
}

class LatestMoviesComponentState extends State<LatestMoviesComponent> {
  List<ImageDataModel> latestMoviesList = getlatestMovies();

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleRowItem(
          title: 'Latest',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MovieScreen(title: 'Latest'),
              ),
            );
          },
          isSeeAll: true,
        ),
        SizedBox(height: 4),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, right: 16),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 16,
            children: List.generate(latestMoviesList.length, (index) {
              ImageDataModel movieImage = latestMoviesList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MovieDetailScreen(
                        index: index,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 129,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      moviePoster(imageName: movieImage.imageName, title: movieImage.title),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            movieImage.duration!,
                            style: secondaryTextStyle(size: 12),
                          ),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 2,
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow.shade700,
                                size: 14,
                              ),
                              Text(
                                movieImage.ratings!,
                                style: secondaryTextStyle(size: 12),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

/*,*/
