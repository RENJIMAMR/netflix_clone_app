import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key, required this.image_url, required this.title});
  final String image_url;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image_url, height: 195, width: 375, fit: BoxFit.cover),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_sharp,
                        size: 25,
                        color: ColorConstants.mainWhite,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Remind Me',
                        style: TextStyle(
                          fontSize: 11,
                          color: ColorConstants.mainWhite.withOpacity(.83),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 25,
                        color: ColorConstants.mainWhite,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 11,
                          color: ColorConstants.mainWhite.withOpacity(.83),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'Season 1 Coming December 14',
                style: TextStyle(
                  fontSize: 11,
                  color: ColorConstants.mainWhite.withOpacity(.83),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
               title,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.mainWhite.withOpacity(.83),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                maxLines: 5,
                textAlign: TextAlign.justify,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                style: TextStyle(
                  fontSize: 14.2,
                  color: ColorConstants.mainWhite.withOpacity(.83),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Center(
                child: Text(
                  'Steamy . Soapy.Slow Burn. Suspenseful. Teen .Mystery',
                  style: TextStyle(
                    fontSize: 11,
                    color: ColorConstants.mainWhite,
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
            ],
          ),
        )
      ],
    );
  }
}
