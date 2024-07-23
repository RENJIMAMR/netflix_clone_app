import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/widget/custom_video_card.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/widget/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: ColorConstants.mainBlack,
        leading: Center(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: ColorConstants.primaryRed,
            child: Icon(
              Icons.notifications,
              color: ColorConstants.mainWhite,
              size: 25,
            ),
          ),
        ),
        title: Text(
          'Notification',
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
                children: List.generate(
              DummyDb.Movieposterlist1.length,
              // (index) => NewArrivalCard(index: index),
              (index) => NewArrivalCard(
                image_url: DummyDb.Movieposterlist1[index],
                name: 'Elvin',
                date: 'Nov 19',
              ),
            )),
            SizedBox(
              height: 25,
            ),
            Column(
                children: List.generate(
              DummyDb.customVideoCardData.length,
              (index) => CustomVideoCard(
                image_url: DummyDb.customVideoCardData[index]['url'],
                title: DummyDb.customVideoCardData[index]['title'],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
