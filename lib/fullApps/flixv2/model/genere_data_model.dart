import '../utils/constants.dart';

class GenreDataModel {
  String? imageName;
  String? title;
  bool isSelected;

  GenreDataModel({this.imageName, this.title, this.isSelected = false});
}

List<GenreDataModel> getGenreImage() {
  List<GenreDataModel> genreImage = [];

  genreImage.add(GenreDataModel(imageName: GENERE_ACTION, title: 'Action'));
  genreImage.add(GenreDataModel(imageName: GENERE_ADVENTURE, title: 'Adventure'));
  genreImage.add(GenreDataModel(imageName: GENERE_ANIMATION, title: 'Animation'));
  genreImage.add(GenreDataModel(imageName: GENERE_AUTOBIOGRAPHY, title: 'Auto Biography'));
  genreImage.add(GenreDataModel(imageName: GENERE_COMEDY, title: 'Comedy'));
  genreImage.add(GenreDataModel(imageName: GENERE_CONCERT, title: 'Concert'));
  genreImage.add(GenreDataModel(imageName: GENERE_DCCOMICS, title: 'DC Comics'));
  genreImage.add(GenreDataModel(imageName: GENERE_DRAMA, title: 'Drama'));
  genreImage.add(GenreDataModel(imageName: GENERE_FAMILY, title: 'Family'));
  genreImage.add(GenreDataModel(imageName: GENERE_FANTACY, title: 'Fantasy'));
  genreImage.add(GenreDataModel(imageName: GENERE_HORROR, title: 'Horror'));
  genreImage.add(GenreDataModel(imageName: GENERE_MISTERY, title: 'Mystery'));
  genreImage.add(GenreDataModel(imageName: GENERE_ROMANCE, title: 'Romance'));
  genreImage.add(GenreDataModel(imageName: GENERE_SPICE, title: 'Spice'));
  genreImage.add(GenreDataModel(imageName: GENERE_SUPERHERO, title: 'Super Hero'));
  genreImage.add(GenreDataModel(imageName: GENERE_THRILLER, title: 'Thriller'));
  genreImage.add(GenreDataModel(imageName: GENERE_WAR, title: 'War'));
  genreImage.add(GenreDataModel(imageName: GENERE_WESTERN, title: 'Western'));
  return genreImage;
}
