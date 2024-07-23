import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.image_url,
    required this.name,
    required this.date,
  });
  final String image_url, name, date;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      color: ColorConstants.grey_shade_424242,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
              image_url,
              fit: BoxFit.cover,
              height: 55,
              width: 113,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Arrival',
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
              ),
              Text(
                name,
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.83),
                    fontSize: 14),
              ),
              Text(
                date,
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.47),
                    fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}
