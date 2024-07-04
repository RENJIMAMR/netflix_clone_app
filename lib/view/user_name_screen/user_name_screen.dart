import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';

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
      body: Center(
        child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 75),
            shrinkWrap: true,
            itemCount: DummyDb.userList.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 130),
            itemBuilder: (context, index) {
              if (index < DummyDb.userList.length) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Column(children: [
                    Image.asset(DummyDb.userList[index]['imagepath']),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      DummyDb.userList[index]['name'],
                      style: TextStyle(
                          fontSize: 13.25, color: ColorConstants.mainWhite),
                    )
                  ]),
                );
              } else {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Column(
                    children: [
                      Image.asset(ImageConstants.userimage_5),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Add Profile',
                        style: TextStyle(
                            fontSize: 13.25, color: ColorConstants.mainWhite),
                      )
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
