import 'package:cloud_storage_status/details.dart';
import 'package:cloud_storage_status/progressBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Color myColorGrey = Color(0xfff2f5f8),
    myColorBlue = Color(0xff3b73de),
    lightText = Color(0xff8891a4);
List<Color> borderColorList = [
  Colors.red,
  Colors.blue,
  Colors.cyan,
  Colors.orange,
  Colors.green,
  Colors.yellow
];
List<String> profilePictureList = [
  'https://i.ytimg.com/vi/7I8OeQs7cQA/maxresdefault.jpg',
  'https://admin.euro.savills.co.uk/_images/aaqib.ahmed.jpg',
  'https://cdn.faceplusplus.com/mc-official/images/comparing/left_pic_three.jpg',
  'https://www.margna.ch/images/content/team/Luzi-Seiler.jpg',
  'http://www.machovibes.com/wp-content/uploads/2018/11/Beard-Style-For-Round-Face-Men29.png',
  'https://i.pinimg.com/736x/2d/ad/fb/2dadfb6e4bdecebb68c4fc966824a9aa--epic-beard-full-beard.jpg'
];

int activeId = 0;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/detailsPage': (context) => DetailsPage(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myColorGrey,
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.menu),
                          Icon(Icons.notifications, color: lightText),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hello,",
                            style: TextStyle(
                              color: lightText,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "Mr. Amazigh Halzoun",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      height: MediaQuery.of(context).size.height * .5,
                      child: PageView.builder(
                        itemCount: 2,
                        itemBuilder: (context, id) {
                          return MyContainer(
                            isActive: id == 0 ? true : false,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Co-Owners",
                            style: TextStyle(
                                fontSize: 21,
                                color: lightText,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            height: 50,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (cxt, id) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: borderColorList[id]),
                                          shape: BoxShape.circle,
                                        ),
                                        padding: EdgeInsets.all(5.0),
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 9),
                                        child: InkWell(
                                          onTap: () {},
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              profilePictureList[id],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(width: 11.0),
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      shape: BoxShape.circle),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.add),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            "Last Files",
                            style: TextStyle(
                                fontSize: 21,
                                color: lightText,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 9.0),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 251,
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
                            Icon(Icons.picture_as_pdf),
                            SizedBox(
                              width: 21,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "BrandonBook.",
                                          style: TextStyle(
                                              color: Color(0xff333333),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 21),
                                        ),
                                        TextSpan(
                                          text: "PDF",
                                          style: TextStyle(
                                            color: lightText,
                                            fontSize: 21,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "DropBox/Projects/Folder2/BrandonBook.pdf",
                                    style: TextStyle(color: lightText),
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
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final bool isActive;

  const MyContainer({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detailsPage');
      },
      child: Container(
        margin: isActive ? EdgeInsets.only(bottom: 5) : EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(25),
              margin: isActive
                  ? EdgeInsets.only(bottom: 25, top: 25, left: 15, right: 15)
                  : EdgeInsets.only(bottom: 15, top: 25, left: 15, right: 15),
              decoration: BoxDecoration(
                color: isActive ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: isActive ? 13.0 : 5.0,
                    offset: Offset(0, isActive ? 13 : 5.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Icon(
                              Icons.folder_open,
                              color: isActive ? Colors.white54 : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Icon(
                            Icons.create_new_folder,
                            color: isActive ? Colors.white54 : Colors.black,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Icon(
                            Icons.storage,
                            color: isActive ? Colors.white54 : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "DropBox",
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.black87,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyProgressBar(isActive: isActive),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 45,
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
