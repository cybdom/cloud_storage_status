import 'package:cloud_storage_status/progressBar.dart';
import 'package:flutter/material.dart';

Color myColorGrey = Color(0xfff2f5f8),
    myColorBlue = Color(0xff3b73de),
    lightText = Color(0xff8891a4);
List<String> foldersList = ['My Developments', 'Behance', "Dribbble"];
List<String> filesList = [
  'progressBar.dart',
  'details.dart',
  'main.dart',
  'pubspec.lock',
  'README.MD'
];
List<String> profilePictureList = [
  'https://i.ytimg.com/vi/7I8OeQs7cQA/maxresdefault.jpg',
  'https://admin.euro.savills.co.uk/_images/aaqib.ahmed.jpg',
  'https://cdn.faceplusplus.com/mc-official/images/comparing/left_pic_three.jpg',
  'https://www.margna.ch/images/content/team/Luzi-Seiler.jpg',
  'http://www.machovibes.com/wp-content/uploads/2018/11/Beard-Style-For-Round-Face-Men29.png',
  'https://i.pinimg.com/736x/2d/ad/fb/2dadfb6e4bdecebb68c4fc966824a9aa--epic-beard-full-beard.jpg'
];

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myColorBlue,
        body: Column(
          children: <Widget>[
            Container(
              height: 151,
              color: myColorBlue,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.all(9.0),
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Dropbox_Icon.svg/1101px-Dropbox_Icon.svg.png"),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5.0,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 13),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "DropBox Cloud",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MyProgressBar(isActive: true),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: myColorGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(blurRadius: 13.0, color: Colors.black26),
                  ],
                ),
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Folders",
                            style: TextStyle(
                                fontSize: 21,
                                color: lightText,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            height: 151,
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, id) {
                                return Container(
                                  width: 251,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 5.0),
                                  padding: EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        blurRadius: 9.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Image.network(
                                            "http://download.seaicons.com/icons/dtafalonso/yosemite-flat/512/Folder-icon.png",
                                            height: 51,
                                            width: 51,
                                          ),
                                          Spacer(),
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              profilePictureList[0],
                                            ),
                                          ),
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              profilePictureList[1],
                                            ),
                                          ),
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              profilePictureList[2],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        "${foldersList[id]}",
                                        style: TextStyle(
                                          color: Color(0xff333333),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 21,
                                        ),
                                      ),
                                      Text(
                                        "Created on: 0${id + 2}/07/2019",
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Last Files",
                            style: TextStyle(
                                fontSize: 21,
                                color: lightText,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (ctx, id) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xffecf0f3),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.folder,
                                  color: lightText,
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "${filesList[id]}",
                                              style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 21),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "DropBox/Projects/Folder2/${filesList[id]}..pdf",
                                        style: TextStyle(color: lightText),
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
