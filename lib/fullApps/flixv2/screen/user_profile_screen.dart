import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/review_component.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/user_component/user_first_component.dart';
import '../utils/common_widgets.dart';
import '../model/movie_reviews_model.dart';

class UserProfileScreen extends StatefulWidget {
  final int userDetailOfIndex;
  final int index;

  UserProfileScreen({required this.index, required this.userDetailOfIndex});

  @override
  State<StatefulWidget> createState() {
    return UserProfileScreenState();
  }
}

class UserProfileScreenState extends State<UserProfileScreen> {
  List<MovieDataModel> movieReviews = getMoviesDetail();
  late MovieDataModel movieReview;
  bool reviews = true;
  ScrollController scrollController = ScrollController();

  void initState() {
    super.initState();
    movieReview = movieReviews[widget.userDetailOfIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: scrollController,
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            UserFirstComponent(userDetailOfIndex: widget.userDetailOfIndex, index: widget.index),
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              controller: scrollController,
              physics: NeverScrollableScrollPhysics(),
              child: Wrap(
                runSpacing: 24,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          reviews = !reviews;
                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          decoration: BoxDecoration(
                            color: reviews ? Colors.red : Colors.red.shade100,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4),
                            ),
                          ),
                          child: Text(
                            'Reviews',
                            textAlign: TextAlign.center,
                            style: primaryTextStyle(size: 18, color: reviews ? Colors.white : Colors.red),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          reviews = !reviews;
                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          decoration: BoxDecoration(
                            color: reviews ? Colors.red.shade100 : Colors.red,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          child: Text(
                            'Likes',
                            textAlign: TextAlign.center,
                            style: primaryTextStyle(
                              size: 18,
                              color: reviews ? Colors.red : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    runSpacing: 16,
                    children: List.generate(movieReview.reviews!.length, (index) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        decoration:
                            BoxDecoration(color: context.cardColor, borderRadius: BorderRadius.circular(defaultRadius)),
                        child: ReviewComponent(
                          reviewsOfIndex: widget.userDetailOfIndex,
                          reviewIndex: index,
                          movieReview: movieReview,
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 16),
                Container(
                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                        constraints: textFormFieldBoxConstraints(
                          maxHeight: 50,
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Type here something ...',
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
