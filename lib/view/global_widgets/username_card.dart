import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard(
      {super.key,
      required this.imagePath,
      required this.username,
      this.oncardpressed,
      this.height,
      this.width});
  final String imagePath, username;
  final void Function()? oncardpressed;
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oncardpressed,
      child: Column(children: [
        Image.asset(height: height, width: width, imagePath),
        SizedBox(
          height: 4,
        ),
        Text(
          username,
          style: TextStyle(fontSize: 13.25, color: ColorConstants.mainWhite),
        )
      ]),
    );
  }
}
