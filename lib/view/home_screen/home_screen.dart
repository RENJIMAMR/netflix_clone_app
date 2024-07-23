import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/home_screen/widget/movies_card_builder_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMoviePosterSection(),
            SizedBox(
              height: 11,
            ),
            _buildMoviePlaySection(),
            SizedBox(
              height: 43,
            ),
            MoviesCardBuilderWidget(
              title: 'Previews',
              PosterImages: DummyDb
                  .Movieposterlist1, //because the dummydb.movieposterlist is already a list
              customHeight: 102,
              iscircle: true,
            ),
            MoviesCardBuilderWidget(
              haveInfoCard: true,
              PosterImages: DummyDb.Movieposterlist2,
              title: 'Continue Watching for Emenalo',
            ),
            MoviesCardBuilderWidget(
              PosterImages: DummyDb.Movieposterlist3,
              title: 'Popular on Netflix',
            ),
            MoviesCardBuilderWidget(
              PosterImages: DummyDb.Movieposterlist4,
              title: 'Trending Now',
              customHeight: 251,
              customWidth: 154,
            ),
            MoviesCardBuilderWidget(
                title: 'Top 10 in Nigeria Today',
                PosterImages: DummyDb.Movieposterlist5),
            MoviesCardBuilderWidget(
                title: 'My List', PosterImages: DummyDb.Movieposterlist6),
            MoviesCardBuilderWidget(
                title: 'Nollywood Movies & TV',
                PosterImages: DummyDb.Movieposterlist1),
            MoviesCardBuilderWidget(
                title: 'Netflix Originals',
                customHeight: 251,
                customWidth: 154,
                PosterImages: DummyDb.Movieposterlist2),
            MoviesCardBuilderWidget(
                title: 'Watch It Again',
                PosterImages: DummyDb.Movieposterlist3),
            MoviesCardBuilderWidget(
                title: 'New Releases', PosterImages: DummyDb.Movieposterlist5),
            MoviesCardBuilderWidget(
                title: 'TV Thrillers & Mysteries',
                PosterImages: DummyDb.Movieposterlist6),
          ],
        ),
      ),
    );
  }

  Row _buildMoviePlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColorConstants.mainWhite,
              size: 24,
            ),
            Text(
              'My List',
              style: TextStyle(
                fontSize: 14,
                color: ColorConstants.mainWhite,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7.3, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: ColorConstants.greyC4C4C4),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 22,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Play',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorConstants.mainWhite,
              size: 24,
            ),
            Text(
              'Info',
              style: TextStyle(
                fontSize: 14,
                color: ColorConstants.mainWhite,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Stack _buildMoviePosterSection() {
    return Stack(
      children: [
        Container(
          height: 415,
          width: 424,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ColorConstants.mainBlack,
                ColorConstants.transparent
              ], begin: Alignment.bottomCenter, end: Alignment.center),
              image: DecorationImage(
                  image: AssetImage(ImageConstants.home_screen_bg),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 57,
                      width: 53,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstants.N_logo),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      'TV Shows',
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    ),
                    Text(
                      'Movies',
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    ),
                    Text(
                      'My List',
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 15,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstants.Streaming_icon),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    '#2 in Nigeria Today',
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
