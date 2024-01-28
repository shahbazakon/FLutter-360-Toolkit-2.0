import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/main.dart';

import '../../model/movie_reviews_model.dart';
import '../../utils/common_widgets.dart';
import '../../utils/videosdata.dart';

class MoviesPosterComponent extends StatefulWidget {
  final MovieDataModel moviePoster;

  MoviesPosterComponent({required this.moviePoster});

  State<MoviesPosterComponent> createState() => MoviesPosterComponentState();
}

class MoviesPosterComponentState extends State<MoviesPosterComponent> {
  String? follow = 'Follow';
  IconData bookmark = Icons.bookmark_add_outlined;
  bool isSelected = false;

  List<VideoDataModel> movieClips = getMovieClips();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                widget.moviePoster.imageName!,
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.red.shade100, BlendMode.dstOver),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black87,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  spacing: 8,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.moviePoster.title!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 16,
                      children: [
                        Text(
                          widget.moviePoster.releaseYear!,
                          style: secondaryTextStyle(color: Colors.white70),
                        ),
                        Text(
                          widget.moviePoster.genere!.join(" · "),
                          style: secondaryTextStyle(color: Colors.white70),
                        ),
                        Text(
                          widget.moviePoster.duration!,
                          style: secondaryTextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 8,
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.yellow.shade700,
                          size: 14,
                        ),
                        Text(
                          ' ${widget.moviePoster.ratings!} (${widget.moviePoster.view!})',
                          style: TextStyle(fontSize: 14, color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
                customFloatingButton(),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).viewPadding.top + 4,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: backButton(backgroundColor: Colors.black26),
              ),
              GestureDetector(
                onTap: () {
                  isSelected = !isSelected;
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Icon(
                    isSelected ? Icons.bookmark_added_rounded : Icons.bookmark_add_outlined,
                    color: appStore.isDarkModeOn ? Colors.grey.shade400 : Colors.white70,
                    size: 22,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
