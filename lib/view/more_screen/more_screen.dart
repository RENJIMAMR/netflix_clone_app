import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/global_widgets/username_card.dart';
import 'package:netflix_clone_app/view/more_screen/my_list/my_list.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 38,
            ),
            _buildUserSelectionSection(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstants.mainWhite,
                  size: 12,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Manage Profiles',
                  style: TextStyle(color: ColorConstants.mainWhite),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              // height: 247,
              color: ColorConstants.grey_shade_424242,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.chat,
                          size: 25,
                          color: ColorConstants.mainWhite,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Tell friends about Netflix.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.mainWhite,
                              fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,',
                      style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                          color: ColorConstants.greyC4C4C4,
                          decoration: TextDecoration.underline,
                          decorationColor: ColorConstants.grey_shade_424242,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          decorationThickness: 2
                          // decorationStyle:
                          ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              fillColor: ColorConstants.mainBlack,
                              filled: true,
                              border: InputBorder.none),
                        )),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          color: ColorConstants.mainWhite,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'Copy Link',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Padding(
                          //     padding:
                          //         EdgeInsets.symmetric(horizontal: 30, vertical: 26)),
                          Container(
                            height: 33,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(ImageConstants.whatsapp)),
                            ),
                          ),
                          SizedBox(
                              height: 41,
                              child: VerticalDivider(
                                color: ColorConstants.mainWhite,
                              )),
                          Container(
                            height: 33,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(ImageConstants.facebook),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 41,
                              child: VerticalDivider(
                                color: ColorConstants.mainWhite,
                              )),
                          Container(
                            height: 33,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(ImageConstants.gmail),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 41,
                              child: VerticalDivider(
                                color: ColorConstants.mainWhite,
                              )),
                          Column(
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: ColorConstants.mainWhite,
                                size: 37,
                              ),
                              Text(
                                'More',
                                style: TextStyle(
                                    color: ColorConstants.mainWhite,
                                    fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyList(),
                          ));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: ColorConstants.mainWhite,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: ColorConstants.greyC4C4C4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'App Settings ',
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sign Out',
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserSelectionSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
                DummyDb.userList.length,
                (index) => UsernameCard(
                    oncardpressed: () {
                      selectedIndex = index;

                      setState(() {});
                    },
                    height: index == selectedIndex ? 70 : 60,
                    width: index == selectedIndex ? 73 : 63,
                    imagePath: DummyDb.userList[index]['imagepath'],
                    username: DummyDb.userList[index]['name'])),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 60,
              width: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    // width: 2,
                    color: ColorConstants.mainWhite,
                  )),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: ColorConstants.mainWhite,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
