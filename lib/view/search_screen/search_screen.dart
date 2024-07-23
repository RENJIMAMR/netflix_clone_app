import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: ColorConstants.greyC4C4C4,
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_voice,
                      size: 24,
                      color: ColorConstants.greyC4C4C4,
                    ),
                    hintText: 'Search for a show, movie, genre, e.t.c.',
                    hintStyle: TextStyle(
                        color: ColorConstants.greyC4C4C4, fontSize: 15.21),
                    fillColor: ColorConstants.grey_shade_424242,
                    filled: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 21),
              child: Text(
                'Top Searches',
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 26.75,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(0),
                        tileColor: ColorConstants.grey_shade_424242,
                        // horizontalTitleGap: 0,
                        // minTileHeight: 176,
                        leading: Container(
                          height: 176,
                          width: 146,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    DummyDb.searchDatas[index]['url']),
                                fit: BoxFit.cover),
                            color: Colors.cyan,
                          ),
                        ),
                        title: Text(
                          DummyDb.searchDatas[index]['title'],
                          style: TextStyle(
                              fontSize: 15, color: ColorConstants.mainWhite),
                        ),
                        trailing: Icon(
                          Icons.play_circle_outline_outlined,
                          size: 28,
                          color: ColorConstants.mainWhite,
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: DummyDb.searchDatas.length),
            )
          ],
        ),
      ),
    );
  }
}
