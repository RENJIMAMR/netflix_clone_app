import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        actions: [
          Icon(
            Icons.edit,
            color: ColorConstants.mainWhite,
          )
        ],
        centerTitle: true,
        title: Image.asset(
          height: 37.2,
          ImageConstants.LOGO_PNG,
        ),
      ),
      backgroundColor: ColorConstants.mainBlack,
      body: GridView.builder(
        itemCount: 4,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              image: DecorationImage(
                  image: AssetImage(ImageConstants.Userimage_1))),
        ),
      ),
    );
  }
}
