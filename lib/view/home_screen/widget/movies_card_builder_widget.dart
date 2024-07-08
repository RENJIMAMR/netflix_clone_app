import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class MoviesCardBuilderWidget extends StatelessWidget {
  const MoviesCardBuilderWidget({
    super.key,
    this.iscircle =
        false, //mostly the container is rectangle so bool value set as false
    this.customHeight = 161,
    this.customWidth = 103,
    required this.title,
    required this.PosterImages,
  });
  final bool iscircle;
  final double customHeight, customWidth;
  final String title;
  final List<String> PosterImages;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SizedBox(
          height: iscircle
              ? customWidth
              : customHeight, //if the shape of container is circle consider the width as custom width,else consider the custom ht,because size of circle depends on width.
          child: ListView.separated(
            itemCount: PosterImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                decoration: BoxDecoration(
                  shape: iscircle
                      ? BoxShape.circle
                      : BoxShape
                          .rectangle, //iscircle:true boxshape will be circular else rectangle
                  color: Colors.amber,
                  image: DecorationImage(
                      image: NetworkImage(PosterImages[index]),
                      fit: BoxFit.cover),
                ),
                height: customHeight,
                width: customWidth,
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 7,
            ),
          ),
        ),
        SizedBox(
          height: 22,
        )
      ],
    );
  }
}
