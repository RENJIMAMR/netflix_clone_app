import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/widget/custom_video_card.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorConstants.mainBlack,
            leading: Image.asset(
              ImageConstants.N_logo,
              width: 53,
              height: 57,
            ),
            title: Row(
              children: [
                Text(
                  'My List',
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 18),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: ColorConstants.mainWhite,
                  size: 25,
                )
              ],
            ),
          ),
          backgroundColor: ColorConstants.mainBlack,
          body: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                  itemCount: DummyDb.MyListData.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 9,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 161,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => Container(
                        height: 161,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(DummyDb.MyListData[index]),
                                fit: BoxFit.cover)),
                      )))),
    );
  }
}
