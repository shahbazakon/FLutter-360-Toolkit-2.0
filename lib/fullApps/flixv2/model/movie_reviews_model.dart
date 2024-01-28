import '../utils/constants.dart';

class MovieDataModel {
  String? imageName;
  String? title;
  String? releaseYear;
  String? ratings;
  String? view;
  int? likes;
  String? duration;
  String? about;
  List? genere = [];
  List<String>? reviews = [];
  int? starRates;
  List<String>? usernames = [];
  List<String>? names = [];
  List<String>? userImageNames = [];

  MovieDataModel({
    this.imageName,
    this.title,
    this.genere,
    this.releaseYear,
    this.duration,
    this.ratings,
    this.view,
    this.about,
    this.reviews,
    this.starRates,
    this.likes,
    this.names,
    this.userImageNames,
    this.usernames,
  });
}

List<MovieDataModel> getMovieReviews() {
  List<MovieDataModel> movieReviews = [];
  movieReviews.add(MovieDataModel(userImageNames: [
    USER_1,
    USER_2,
    USER_3,
    USER_4
  ], names: [
    'Foram Patel',
    'Neha Parmar',
    'Krishna Patel',
    'Bhakti Thakar'
  ], usernames: [
    'foram017',
    'neha307',
    'krishna013',
    'bhxkti12'
  ], reviews: [
    "2020 was a year full of difficult moments, none of these painful moments, however were as agonizing as the 90-minutes that one has to endure to get to the roll of credits of this sad-sad reboot of what otherwise would have been remembered as a Disney all-time favourite.",
    "The cinematography is absolutely gorgeous .Filming taking place in New Zealand and China. With a production budget of \$200 million, it is the most expensive film ever made by a female director. ",
    "Excellent character development that leads with a strong new story line, delivering an amazing and fresh take on the original classic animated version while still making numerous iconic references!! (You’ll undoubtedly appreciate the subtle Easter eggs).",
    "I feel like this was one of Disney’s BEST movies to date! Let’s not forget that I grew up watching the Cartoon/Animated version of this so I felt there was a LOT to follow up to.",
  ]));
  movieReviews.add(MovieDataModel(userImageNames: [
    USER_2,
    USER_3,
    USER_4
  ], names: [
    'Neha Parmar',
    'Krishna Patel',
    'Bhakti Thakar'
  ], usernames: [
    'neha307',
    'krishna013',
    'bhxkti12'
  ], reviews: [
    "THIS MOVIE IS AMAZING!!! I love watching it! Jack and Rose, even though they are not real people and never were, feel so realistic and the effects and clothing and decoration they used in this movie makes it feel like I’m actually on the titanic with them!",
    "This movie is a masterpiece, everything is perfectly and beautifully shot and well acted. The way they recreated the interior of the ship is near perfect and reflects the sheer beauty of the Titanic. De Caprio and Kate Winslet shine throughout with super onscreen chemistry.",
    "This has been one of the movies I watched again and again and felt fresh every time making me cry. Recreating the tragedy of Titanic in a real-time scale(sinking of the ship after it hit an iceberg took same time as in the movie) with unforgettable characters and mastery of story telling - hats off to James Cameron.. ",
  ]));
  movieReviews.add(MovieDataModel(userImageNames: [
    USER_3,
    USER_4
  ], names: [
    'Krishna Patel',
    'Bhakti Thakar'
  ], usernames: [
    'krishna013',
    'bhxkti12'
  ], reviews: [
    "Great Movie! A movie full of love and a film representation taking place during World War II. I loved the casting, Chris Evans, Haylee Atwell, Tommy Lee Jones, Stanley Tucci, Sebastian Stan, Dominic Cooper and Hugo Weaving. This is a personal favorite and I think this movie is my 3rd favorite MCU (Marvel Cinematic Universe) movie. An amazing origin story, showing us who Captain America was, and how he is now. I recommend this for family movie nights, or just for fun!",
    "Awsome !!!! Captian amarica is my favorite superhero ever since i was able to speak !  it is truely a good film and i think that it is definently one of the best.the origin story is so good . When steve rogers a skiny but determined warm hearted man goes through a super solder program that make him able to fight in the war he then takes on the mean red scull who owns a nazi organisation called hydra."
  ]));
  movieReviews.add(MovieDataModel(names: [
    'Naimish Machchhar',
    'Chintan Pandya'
  ], usernames: [
    'charlie_20',
    'chintan_pandya'
  ], userImageNames: [
    USER_6,
    USER_9
  ], reviews: [
    "In the movie avatar in my opinion did a rally good job at storytelling bringing the film to life giving it character. The film does a splendid job at helping the audience understand exactly what is gong on in the movie.",
    "Great movie. It lives up to its hype and does not disappoint. I would recommend watching the extended version if you haven't already to this point. It explains the story and plot more better and doesn't leaveyou confused and pondering on trying to figure out the plot and what could've actually happened that didn't made sense. Because when I saw the theatrical release, I knew it didn't feel complete and there was some plot holes that didn't really fill in certain segments of the movie."
  ]));
  movieReviews.add(MovieDataModel(userImageNames: [
    USER_4
  ], names: [
    'Bhakti Thakar'
  ], usernames: [
    'bhxkti12'
  ], reviews: [
    "This movie is one of the best movies I've ever seen. It's also my all-time favorite movie. I watched it as a young kid and it impacted me so much. I still cry every time I watch it. Zoe Saldana did an outstanding job, you feel for her when she's upset and crying. I loved how connected the Na'vi were with their home and nature.",
  ]));
  movieReviews.add(MovieDataModel(userImageNames: [
    USER_4,
    USER_8,
    USER_6,
  ], names: [
    'Bhakti Thakar',
    'Ayush Solanki',
    'Naimish Machchhar',
  ], usernames: [
    'bhxkti12',
    'cine_ayush',
    'nximish20',
  ], reviews: [
    "As a definite Spirit-filled youngster and his early and almost mid twenties, The New Light, or (Rise of Skywalker) as the corporate title name, ought to be an experience for not just one but three generations and out of this world and above Beyond quality storing and Journey!) Spiritually which is most important, culturally, diversity, worldly, and financially and even physically, the Ripple effects of one of the greatest stories present past or future tense are to be sensed and cherished! ",
    "I was 2 and was going on 3 when A New Hope came out yet watched in for the first time on Showtime when I was 8 years old and have been a fan of Star Wars since then and I thoroughly enjoyed this film. In my opinion it was a major improvement over The Last Jedi and it was great seeing not only Billy Dee Williams and Ian McDiarmid back but Denis Lawson as well.",
    "It’s not a good movie. The pace doesn’t allow anything to sink in and be processed, and therefore ignores any nuances to story telling and caring about characters. They managed to eliminate any character development from the last movies by whisking them through a non stop Michael Bay explosion scene for 3 hours.",
  ]));
  movieReviews.add(MovieDataModel(names: [
    'Ayush Solanki',
    'Rutvik Patel'
  ], usernames: [
    'cine_ayush',
    'rutvik_09'
  ], userImageNames: [
    USER_8,
    USER_7
  ], reviews: [
    "Great Movie! A movie full of love and a film representation taking place during World War II. I loved the casting, Chris Evans, Haylee Atwell, Tommy Lee Jones, Stanley Tucci, Sebastian Stan, Dominic Cooper and Hugo Weaving. This is a personal favorite and I think this movie is my 3rd favorite MCU (Marvel Cinematic Universe) movie. An amazing origin story, showing us who Captain America was, and how he is now. I recommend this for family movie nights, or just for fun!",
    "Awsome !!!! Captian amarica is my favorite superhero ever since i was able to speak !  it is truely a good film and i think that it is definently one of the best.the origin story is so good . When steve rogers a skiny but determined warm hearted man goes through a super solder program that make him able to fight in the war he then takes on the mean red scull who owns a nazi organisation called hydra."
  ]));

  return movieReviews;
}

List<MovieDataModel> getMoviesDetail() {
  List<MovieDataModel> latestmoviesList = [];
  latestmoviesList.add(
    MovieDataModel(
        imageName: MULAN_POSTER,
        title: 'Mulan',
        genere: ['Action', 'Drama', 'Adventure'],
        ratings: '4.5',
        view: '78.2m',
        releaseYear: '2019',
        duration: '2h 49m',
        about:
            "This retelling of the old Chinese folktale is about the story of a young Chinese maiden who learns that her weakened and lame father is to be called up into the army in order to fight the invading Huns. Knowing that he would never survive the rigours of war in his state, she decides to disguise herself and join in his place. Unknown to her, her ancestors are aware of this and to prevent it, they order a tiny disgraced dragon, Mushu to join her in order to force her to abandon her plan. He agrees, but when he meets Mulan, he learns that she cannot be dissuaded and so decides to help her in the perilous times ahead.",
        likes: 23,
        starRates: 4,
        userImageNames: [USER_1, USER_2, USER_3, USER_4],
        names: ['Foram Patel', 'Neha Parmar', 'Krishna Patel', 'Bhakti Thakar'],
        usernames: ['foram017', 'neha307', 'krishna013', 'bhxkti12'],
        reviews: [
          "2020 was a year full of difficult moments, none of these painful moments, however were as agonizing as the 90-minutes that one has to endure to get to the roll of credits of this sad-sad reboot of what otherwise would have been remembered as a Disney all-time favourite.",
          "The cinematography is absolutely gorgeous .Filming taking place in New Zealand and China. With a production budget of \$200 million, it is the most expensive film ever made by a female director. ",
          "Excellent character development that leads with a strong new story line, delivering an amazing and fresh take on the original classic animated version while still making numerous iconic references!! (You’ll undoubtedly appreciate the subtle Easter eggs).",
          "I feel like this was one of Disney’s BEST movies to date! Let’s not forget that I grew up watching the Cartoon/Animated version of this so I felt there was a LOT to follow up to."
        ]),
  );
  latestmoviesList.add(
    MovieDataModel(
        imageName: CAPTAIN_AMERICA_POSTER,
        title: 'Captain America',
        genere: ['Thriller', 'Drama', 'Adventure'],
        ratings: '2.3',
        view: '32.2k',
        releaseYear: '2017',
        duration: '2h 30m',
        starRates: 2,
        likes: 12,
        about:
            "It is 1942, America has entered World War II, and sickly but determined Steve Rogers is frustrated at being rejected yet again for military service. Everything changes when Dr. Erskine recruits him for the secret Project Rebirth. Proving his extraordinary courage, wits and conscience, Rogers undergoes the experiment and his weak body is suddenly enhanced into the maximum human potential. When Dr. Erskine is then immediately assassinated by an agent of Nazi Germany's secret HYDRA research department (headed by Johann Schmidt, a.k.a. the Red Skull), Rogers is left as a unique man who is initially misused as a propaganda mascot; however, when his comrades need him, Rogers goes on a successful adventure that truly makes him Captain America, and his war against Schmidt begins.",
        userImageNames: [USER_3, USER_4],
        names: ['Krishna Patel', 'Bhakti Thakar'],
        usernames: ['krishna013', 'bhxkti12'],
        reviews: [
          "Great Movie! A movie full of love and a film representation taking place during World War II. I loved the casting, Chris Evans, Haylee Atwell, Tommy Lee Jones, Stanley Tucci, Sebastian Stan, Dominic Cooper and Hugo Weaving. This is a personal favorite and I think this movie is my 3rd favorite MCU (Marvel Cinematic Universe) movie. An amazing origin story, showing us who Captain America was, and how he is now. I recommend this for family movie nights, or just for fun!",
          "Awsome !!!! Captian amarica is my favorite superhero ever since i was able to speak !  it is truely a good film and i think that it is definently one of the best.the origin story is so good . When steve rogers a skiny but determined warm hearted man goes through a super solder program that make him able to fight in the war he then takes on the mean red scull who owns a nazi organisation called hydra."
        ]),
  );
  latestmoviesList.add(
    MovieDataModel(
        imageName: TITANIC_POSTER,
        title: 'Titanic',
        genere: ['Romantic', 'Drama', 'Adventure'],
        ratings: '3.9',
        view: '49.2m',
        releaseYear: '2020',
        duration: '2h 20m',
        likes: 28,
        starRates: 3,
        about:
            "84 years later, a 100 year-old woman named Rose DeWitt Bukater tells the story to her granddaughter Lizzy Calvert, Brock Lovett, Lewis Bodine, Bobby Buell and Anatoly Mikailavich on the Keldysh about her life set in April 10th 1912, on a ship called Titanic when young Rose boards the departing ship with the upper-class passengers and her mother, Ruth DeWitt Bukater, and her fiancé, Caledon Hockley. Meanwhile, a drifter and artist named Jack Dawson and his best friend Fabrizio De Rossi win third-class tickets to the ship in a game. And she explains the whole story from departure until the death of Titanic on its first and last voyage April 15th, 1912 at 2:20 in the morning",
        userImageNames: [USER_2, USER_3, USER_4],
        names: ['Neha Parmar', 'Krishna Patel', 'Bhakti Thakar'],
        usernames: ['neha307', 'krishna013', 'bhxkti12'],
        reviews: [
          "THIS MOVIE IS AMAZING!!! I love watching it! Jack and Rose, even though they are not real people and never were, feel so realistic and the effects and clothing and decoration they used in this movie makes it feel like I’m actually on the titanic with them!",
          "This movie is a masterpiece, everything is perfectly and beautifully shot and well acted. The way they recreated the interior of the ship is near perfect and reflects the sheer beauty of the Titanic. De Caprio and Kate Winslet shine throughout with super onscreen chemistry.",
          "This has been one of the movies I watched again and again and felt fresh every time making me cry. Recreating the tragedy of Titanic in a real-time scale(sinking of the ship after it hit an iceberg took same time as in the movie) with unforgettable characters and mastery of story telling - hats off to James Cameron.. ",
        ]),
  );
  latestmoviesList.add(
    MovieDataModel(
        imageName: AVATAR_POSTER,
        title: 'Avatar',
        genere: ['Adventure', 'Thriller'],
        ratings: '4.2',
        view: '52.8k',
        releaseYear: '2019',
        duration: '2h 35m',
        starRates: 4,
        likes: 89,
        about:
            "Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na'vi race to protect their home.",
        names: ['Naimish Machchhar', 'Chintan Pandya'],
        usernames: ['charlie_20', 'chintan_pandya'],
        userImageNames: [USER_6, USER_9],
        reviews: [
          "In the movie avatar in my opinion did a rally good job at storytelling bringing the film to life giving it character. The film does a splendid job at helping the audience understand exactly what is gong on in the movie.",
          "Great movie. It lives up to its hype and does not disappoint. I would recommend watching the extended version if you haven't already to this point. It explains the story and plot more better and doesn't leaveyou confused and pondering on trying to figure out the plot and what could've actually happened that didn't made sense. Because when I saw the theatrical release, I knew it didn't feel complete and there was some plot holes that didn't really fill in certain segments of the movie."
        ]),
  );
  latestmoviesList.add(
    MovieDataModel(
        imageName: WAKANDA_VISION_POSTER,
        title: 'Wakanda Vision',
        genere: ['Thriller', 'Adventure'],
        ratings: '5',
        view: '82.3k',
        releaseYear: '2022',
        duration: '2h 30m',
        starRates: 5,
        likes: 689,
        about:
            "Blends the style of classic sitcoms with the MCU, in which Wanda Maximoff and Vision - two super-powered beings living their ideal suburban lives - begin to suspect that everything is not as it seems",
        userImageNames: [USER_4],
        names: ['Bhakti Thakar'],
        usernames: ['bhxkti12'],
        reviews: [
          "This movie is one of the best movies I've ever seen. It's also my all-time favorite movie. I watched it as a young kid and it impacted me so much. I still cry every time I watch it. Zoe Saldana did an outstanding job, you feel for her when she's upset and crying. I loved how connected the Na'vi were with their home and nature.",
        ]),
  );
  latestmoviesList.add(
    MovieDataModel(
        imageName: STAR_WARS_POSTER,
        title: 'Star Wars',
        genere: ['Thriller'],
        ratings: '4.8',
        releaseYear: '2018',
        view: '118.1m',
        duration: '1h 30m',
        likes: 23,
        about:
            "While the First Order continues to ravage the galaxy, Rey finalizes her training as a Jedi. But danger suddenly rises from the ashes as the evil Emperor Palpatine mysteriously returns from the dead. While working with Finn and Poe Dameron to fulfill a new mission, Rey will not only face Kylo Ren once more, but she will also finally discover the truth about her parents as well as a deadly secret that could determine her future and the fate of the ultimate final showdown that is to come",
        starRates: 5,
        userImageNames: [
          USER_4,
          USER_8,
          USER_6,
        ],
        names: [
          'Bhakti Thakar',
          'Ayush Solanki',
          'Naimish Machchhar',
        ],
        usernames: [
          'bhxkti12',
          'cine_ayush',
          'nximish20',
        ],
        reviews: [
          "As a definite Spirit-filled youngster and his early and almost mid twenties, The New Light, or (Rise of Skywalker) as the corporate title name, ought to be an experience for not just one but three generations and out of this world and above Beyond quality storing and Journey!) Spiritually which is most important, culturally, diversity, worldly, and financially and even physically, the Ripple effects of one of the greatest stories present past or future tense are to be sensed and cherished! ",
          "I was 2 and was going on 3 when A New Hope came out yet watched in for the first time on Showtime when I was 8 years old and have been a fan of Star Wars since then and I thoroughly enjoyed this film. In my opinion it was a major improvement over The Last Jedi and it was great seeing not only Billy Dee Williams and Ian McDiarmid back but Denis Lawson as well.",
          "It’s not a good movie. The pace doesn’t allow anything to sink in and be processed, and therefore ignores any nuances to story telling and caring about characters. They managed to eliminate any character development from the last movies by whisking them through a non stop Michael Bay explosion scene for 3 hours.",
        ]),
  );
  return latestmoviesList;
}
