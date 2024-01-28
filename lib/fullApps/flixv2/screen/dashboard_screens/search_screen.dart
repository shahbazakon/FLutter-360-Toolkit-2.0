import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/actor_screens/actor_detail_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/filter_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/movies_screen/movie_detail_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

import '../../model/actor_data_model.dart';
import '../../model/image_data_model.dart';
import '../actor_screens/actors_screen.dart';

class SearchScreen extends StatefulWidget {
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  late FocusNode curentFocusNode;
  late TextEditingController searchFieldController;
  List<ActorDataModel> actorsImages = getActorsDetail();
  List<ImageDataModel> latestmoviesList = getlatestMovies();
  var selectedIconColor = Colors.white;
  var selected = false;
  var list = true;

  List<String> title = ['Actors', 'Movies & Series'];
  List<Widget> trailingIcon = [];

  @override
  void initState() {
    super.initState();
    curentFocusNode = FocusNode();
    searchFieldController = TextEditingController();
    trailingIcon.add(Wrap());
  }

  void dispose() {
    curentFocusNode.dispose();
    searchFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 64),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextFormField(
                      focusNode: curentFocusNode,
                      controller: searchFieldController,
                      style: TextStyle(overflow: TextOverflow.ellipsis),
                      decoration: InputDecoration(
                        constraints: textFormFieldBoxConstraints(maxWidth: MediaQuery.of(context).size.width - 60),
                        prefixIcon: Icon(Icons.search_outlined),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic),
                        ),
                        hintText: 'Search for Movies, Series...',
                      ),
                      onTap: () {
                        curentFocusNode.hasPrimaryFocus ? curentFocusNode.unfocus() : curentFocusNode.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(color: Colors.red.shade100, shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen()));
                      },
                      padding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      icon: Icon(Icons.filter_alt_rounded, size: 24, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Column(
              children: [
                titleRowItem(
                    title: 'Actors',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ActorsScreen()));
                    },
                    isSeeAll: true),
                SizedBox(height: 4),
                actors(),
                SizedBox(height: 32),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Movies & Series',
                        textAlign: TextAlign.left,
                        style: boldTextStyle(size: 20),
                      ),
                    ),
                    Wrap(
                      spacing: 8,
                      children: [
                        GestureDetector(
                          onTap: () {
                            list = !list;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.view_agenda_rounded,
                            color: list ? Colors.white70 : Colors.white10,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            FocusScope.of(context).requestFocus();
                            list = !list;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.grid_view_rounded,
                            color: list ? Colors.white10 : Colors.white70,
                          ),
                        ),
                        SizedBox(width: 8)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                list ? listviewOfMoviesSeries() : gridViewOgMoviesSeries()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget actors() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 16, right: 16),
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 16,
        children: List.generate(actorsImages.length, (index) {
          ActorDataModel actorImage = actorsImages[index];
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ActorDetailScreen(
                      actorData: actorsImages[index],
                    ),
                  ),
                );
              },
              child: actorImageItem(imageName: actorImage.imageName, name: actorImage.title));
        }),
      ),
    );
  }

  Widget listviewOfMoviesSeries() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
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
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    movieImage.imageName!,
                    height: 160,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                SizedBox(width: 16),
                Wrap(
                  spacing: 16,
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'Season $index',
                      style: secondaryTextStyle(size: 16),
                    ),
                    Text(
                      movieImage.title!,
                      style: boldTextStyle(size: 22),
                    ),
                    Text(
                      "${movieImage.genere!.join(" · ")}",
                      style: secondaryTextStyle(),
                    ),
                    8.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customFloatingButton(paddingValue: 4),
                        TextIcon(
                          prefix: Icon(
                            Icons.star_rate_rounded,
                            color: Colors.yellow.shade700,
                            size: 14,
                          ),
                          text: movieImage.ratings.validate(),
                          textStyle: secondaryTextStyle(size: 12),
                        ),
                      ],
                    )
                  ],
                ).expand()
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget gridViewOgMoviesSeries() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 16),
      child: Wrap(
        spacing: 22,
        runSpacing: 22,
        children: [
          ...List.generate(
            latestmoviesList.length,
            (index) => Container(
              width: MediaQuery.of(context).size.width / 2 - 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MovieDetailScreen(
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      child: Image.asset(
                        latestmoviesList[index].imageName!,
                        height: 220,
                        width: MediaQuery.of(context).size.width / 2 - 32,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    latestmoviesList[index].title!,
                    textAlign: TextAlign.left,
                    style: boldTextStyle(),
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Seasons ${index + 1}',
                        style: secondaryTextStyle(size: 12),
                      ),
                      Wrap(
                        spacing: 2,
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.yellow.shade700,
                            size: 14,
                          ),
                          Text(
                            '${latestmoviesList[index].ratings} (${latestmoviesList[index].view})',
                            style: secondaryTextStyle(size: 12),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
