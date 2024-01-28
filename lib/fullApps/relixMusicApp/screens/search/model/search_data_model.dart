import '../../../utils/images.dart';

class SearchDataModel {
  String? img;
  String? titleName;
  String? subTitleName;
  String? type;
  String? episodeDate;
  String? episodeTime;
  String? playlistTime;
  String? noOfListeners;
  String? noOfLikes;
  String? followers;
  String? rate;
  bool? isLike;
  List<SearchDataModel>? albums;
  List<SearchDataModel>? data;

  SearchDataModel({
    this.img,
    this.titleName,
    this.subTitleName,
    this.albums,
    this.data,
    this.episodeDate,
    this.episodeTime,
    this.noOfListeners,
    this.noOfLikes,
    this.followers,
    this.rate,
    this.isLike = false,
    this.playlistTime,
    this.type,
  });
}

List<SearchDataModel> getRecentSearchList() {
  List<SearchDataModel> tempRecentSearchList = [];

  tempRecentSearchList.add(SearchDataModel(img: justin_bieber_art, titleName: 'Justin Bieber', subTitleName: 'Artist'));
  tempRecentSearchList.add(SearchDataModel(img: stereo_hearts_song, titleName: 'Stereo Hearts (feat.Adam Lev....', subTitleName: 'Song'));
  tempRecentSearchList.add(SearchDataModel(img: akon_artists, titleName: 'Akon', subTitleName: 'Artist'));

  return tempRecentSearchList;
}

SearchDataModel getTopSearchList = SearchDataModel(
  img: ariana_grande_artists,
  titleName: 'Ariana Grande ',
  subTitleName: 'Artist',
  albums: [
    SearchDataModel(img: yours_truly_album, titleName: 'Yours Truly', subTitleName: 'Album'),
    SearchDataModel(img: sweetener_album, titleName: 'Sweetener', subTitleName: 'Album'),
    SearchDataModel(img: thank_u_next, titleName: 'thank u, next', subTitleName: 'Album'),
  ],
  data: [
    SearchDataModel(img: rings_song, titleName: '7 Rings', subTitleName: 'Song'),
    SearchDataModel(img: ariana_grande_best_hits_playlist, titleName: 'Ariana Grande Best Hits', subTitleName: 'Playlist'),
    SearchDataModel(img: dua_lipa_art, titleName: 'Dua Lipa', subTitleName: 'Artist'),
    SearchDataModel(img: hall_of_fame, titleName: 'The Skrip', subTitleName: 'Artist'),
  ],
);

List<SearchDataModel> getSongList() {
  List<SearchDataModel> tempSongList = [];

  tempSongList.add(SearchDataModel(img: rings_song, titleName: '7 Rings', subTitleName: 'Song'));
  tempSongList.add(SearchDataModel(img: let_me_love_you, titleName: 'Let Me Love You', subTitleName: 'Song'));
  tempSongList.add(SearchDataModel(img: side_to_side_music, titleName: 'Side To Side', subTitleName: 'Song'));
  tempSongList.add(SearchDataModel(img: save_your_tears_music, titleName: 'Save Your Tears', subTitleName: 'Song'));
  tempSongList.add(SearchDataModel(img: last_christmas_music, titleName: 'Last Christmas', subTitleName: 'Song'));
  tempSongList.add(SearchDataModel(img: focus_music, titleName: 'Focus', subTitleName: 'Song'));
  tempSongList.add(SearchDataModel(img: ariana_music, titleName: 'Ariana', subTitleName: 'Song'));
  tempSongList.add(SearchDataModel(img: position_music, titleName: 'Position', subTitleName: 'Song'));

  return tempSongList;
}

List<SearchDataModel> getAlbumsList() {
  List<SearchDataModel> tempAlbumsList = [];

  tempAlbumsList.add(SearchDataModel(img: yours_truly_album, titleName: 'Yours Truly', subTitleName: 'Ariana Grande', noOfListeners: '400m listeners', isLike: true));
  tempAlbumsList.add(SearchDataModel(img: sweetener_album, titleName: 'Sweetener', subTitleName: 'Ariana Grande', noOfListeners: '200m listeners', isLike: true));
  tempAlbumsList.add(SearchDataModel(img: thank_u_next, titleName: 'thank u, next', subTitleName: 'Ariana Grande', noOfListeners: '300m listeners', isLike: true));
  tempAlbumsList.add(SearchDataModel(img: position_music, titleName: 'Positions', subTitleName: 'Ariana Grande', noOfListeners: '100m listeners', isLike: true));
  tempAlbumsList.add(SearchDataModel(img: dangerous_wo_album, titleName: 'Dangerous Wo....', subTitleName: 'Ariana Grande', noOfListeners: '250m listeners', isLike: true));
  tempAlbumsList.add(SearchDataModel(img: planet_her_album, titleName: 'Planet Her', subTitleName: 'Doja Cat', noOfListeners: '350m listeners', isLike: true));
  tempAlbumsList.add(SearchDataModel(img: revival_album, titleName: 'Revival(Deluxe)', subTitleName: 'Selena Gomez', noOfListeners: '400m listeners', isLike: true));
  tempAlbumsList.add(SearchDataModel(img: doja_cat_album, titleName: 'Planet Her', subTitleName: 'Doja Cat', noOfListeners: '225m listeners', isLike: true));

  return tempAlbumsList;
}

List<SearchDataModel> getPlayListsList() {
  List<SearchDataModel> tempPlayListsList = [];

  tempPlayListsList.add(SearchDataModel(img: ariana_grande_all_song_playlist, titleName: 'Ariana Grande - all songs', isLike: true, noOfLikes: '400m likes', type: 'Playlist', playlistTime: '5h 4min'));
  tempPlayListsList.add(SearchDataModel(img: ariana_grande_love_song_playlist, titleName: 'Ariana Grande love songs', isLike: true, noOfLikes: '300m likes', type: 'Playlist', playlistTime: '5h 4min'));
  tempPlayListsList.add(SearchDataModel(img: position_music, titleName: 'This is Ariana Grande - By Relix', isLike: true, noOfLikes: '200m likes', type: 'Playlist', playlistTime: '5h 4min'));
  tempPlayListsList.add(SearchDataModel(img: ariana_grande_artists, titleName: 'Ariana Grande : Best of - By Arian...', isLike: true, noOfLikes: '100m likes', type: 'Playlist', playlistTime: '5h 4min'));
  tempPlayListsList.add(SearchDataModel(img: ariana_selena_katy_taylor_dua_playlist, titleName: 'Ariana, Selena, Katy, Taylor, Dua', isLike: true, noOfLikes: '500m likes', type: 'Playlist', playlistTime: '5h 4min'));
  tempPlayListsList.add(SearchDataModel(img: ariana_grande_christmas_song_playlist, titleName: 'Ariana Grande : Christmas Songs', isLike: true, noOfLikes: '200m likes', type: 'Playlist', playlistTime: '5h 4min'));
  tempPlayListsList.add(SearchDataModel(img: this_is_arianna_savali_playlist, titleName: 'This is Arianna Savali', isLike: true, noOfLikes: '300m likes', type: 'Playlist', playlistTime: '5h 4min'));
  tempPlayListsList.add(SearchDataModel(img: dua_lipa_ariana_grande_playlist, titleName: 'Dua lipa & Ariana Grande', isLike: true, noOfLikes: '400m likes', type: 'Playlist', playlistTime: '5h 4min'));

  return tempPlayListsList;
}

List<SearchDataModel> getPodcastsList() {
  List<SearchDataModel> tempPodcastsList = [];

  tempPodcastsList.add(
    SearchDataModel(
      img: talk_about_mental_health_podcast,
      titleName: 'Let’s Talk About Mental Health wit....',
      subTitleName: 'Ariana Knowles',
      followers: '12K Followers',
      rate: '4.8',
    ),
  );
  tempPodcastsList.add(
    SearchDataModel(
      img: young_beautiful_successful_podcast,
      titleName: 'Young Beautiful Successful',
      subTitleName: 'Young Beautiful Succe...',
      followers: '11K Followers',
      rate: '4.5',
    ),
  );
  tempPodcastsList.add(
    SearchDataModel(
      img: ranveer_show_podcast,
      titleName: 'Young Beautiful Succe...',
      subTitleName: 'BeerBiceps',
      followers: '10K Followers',
      rate: '4.3',
    ),
  );

  return tempPodcastsList;
}

List<SearchDataModel> getEpisodesList() {
  List<SearchDataModel> tempEpisodesList = [];

  tempEpisodesList.add(
    SearchDataModel(
      img: ariana_grande_positions_podcast,
      titleName: 'Ariana Grande “Positions” Interview',
      subTitleName: 'Ariana Grande “Positions” Intervie.....',
      episodeDate: '31 Oct 2020',
      episodeTime: '1 hr 10 min',
    ),
  );
  tempEpisodesList.add(
    SearchDataModel(
      img: ariana_grande_sweetener_podcast,
      titleName: 'Young Beautiful Successful',
      subTitleName: 'Young Beautiful Succe...',
      episodeDate: '31 Oct 2020',
      episodeTime: '1 hr 10 min',
    ),
  );
  tempEpisodesList.add(
    SearchDataModel(
      img: ariana_grande_thank_u_podcast,
      titleName: 'Ariana Grande Talks thank u, next',
      subTitleName: 'Ariana Grande stopped by the stu....',
      episodeDate: '31 Oct 2020',
      episodeTime: '1 hr 10 min',
    ),
  );

  return tempEpisodesList;
}
