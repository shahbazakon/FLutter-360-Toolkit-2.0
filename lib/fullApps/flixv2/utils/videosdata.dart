import 'constants.dart';

class VideoDataModel {
  String? videoTitle;
  String? movieName;

  VideoDataModel({this.videoTitle, this.movieName});
}

List<VideoDataModel> getMovieClips() {
  List<VideoDataModel> videosList = [];
  videosList.add(
    VideoDataModel(videoTitle: VIDEO1, movieName: 'Mulan'),
  );
  videosList.add(
    VideoDataModel(videoTitle: VIDEO2, movieName: 'In To The Wild'),
  );
  videosList.add(
    VideoDataModel(videoTitle: VIDEO3, movieName: 'Five Feet Apart'),
  );
  videosList.add(
    VideoDataModel(videoTitle: VIDEO4, movieName: 'What If'),
  );
  videosList.add(
    VideoDataModel(videoTitle: VIDEO5, movieName: 'All The Bright Places'),
  );
  return videosList;
}
