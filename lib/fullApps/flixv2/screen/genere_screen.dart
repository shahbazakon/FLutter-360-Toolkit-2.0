import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

import '../model/genere_data_model.dart';

class GenreScreen extends StatefulWidget {
  State<GenreScreen> createState() => GenreScreenState();
}

class GenreScreenState extends State<GenreScreen> {
  List<GenreDataModel> genreList = getGenreImage();

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        isLeading: true,
        onTap: () {
          Navigator.of(context).pop();
        },
        title: 'Genre ',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Wrap(
              runSpacing: 16,
              spacing: 16,
              children: List.generate(
                genreList.length,
                (i) {
                  GenreDataModel genre = genreList[i];
                  return InkWell(
                    onTap: () {
                      genre.isSelected = !genre.isSelected;
                      setState(() {});
                    },
                    radius: defaultRadius,
                    borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 24,
                      padding: EdgeInsets.all(16),
                      height: 80,
                      decoration: BoxDecoration(
                        color: context.cardColor,
                        borderRadius: BorderRadius.circular(defaultRadius),
                        image: DecorationImage(
                          image: AssetImage(genre.imageName!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: genre.isSelected ? Colors.red : Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(color: genre.isSelected ? Colors.transparent : context.iconColor),
                            ),
                            child: Icon(
                              Icons.done,
                              size: 16,
                              color: genre.isSelected ? Colors.white : Colors.transparent,
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Text(genre.title!, style: primaryTextStyle()),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: redirectionButtonContainer(
                title: 'Apply',
                width: MediaQuery.of(context).size.width - 32,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
