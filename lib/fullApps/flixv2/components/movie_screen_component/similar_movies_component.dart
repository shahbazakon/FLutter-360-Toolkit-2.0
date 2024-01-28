import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:prokit_flutter/fullApps/flixv2/model/image_data_model.dart';

import '../../screen/movies_screen/movie_detail_screen.dart';
import '../../utils/common_widgets.dart';

class SimilarMoviesComponent extends StatefulWidget {
  State<SimilarMoviesComponent> createState() => SimilarMoviesComponentState();
}

class SimilarMoviesComponentState extends State<SimilarMoviesComponent> {
  List<ImageDataModel> latestmoviesList = getlatestMovies();
  late ImageDataModel movieImage;

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleRowItem(isSeeAll: false, title: 'Similar'),
        SizedBox(height: 16),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 16,
            children: List.generate(latestmoviesList.length, (index) {
              ImageDataModel movieImage = latestmoviesList[index];
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
                      ClipRRect(
                        child: Image.asset(
                          movieImage.imageName!,
                          height: 200,
                          width: 129,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      SizedBox(height: 4),
                      Text(
                        movieImage.title!,
                        textAlign: TextAlign.left,
                        style: boldTextStyle(size: 14),
                      ),
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
                                size: 12,
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
