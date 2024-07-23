import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          'Smart Downloads',
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              'Introducing Downloads For You',
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Column(
                children: [
                  Text(
                    maxLines: 4,
                    textAlign: TextAlign.justify,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.',
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  CircleAvatar(
                    radius: 86,
                    backgroundColor: ColorConstants.grey_shade_424242,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 41,
              width: 353,
              color: ColorConstants.blue0071EB,
              child: Center(
                child: Text(
                  'SETUP',
                  style:
                      TextStyle(fontSize: 14, color: ColorConstants.mainWhite),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 33,
              width: 239,
              color: ColorConstants.grey_shade_424242,
              child: Center(
                child: Text(
                  'Find Something to Download',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.mainWhite),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
