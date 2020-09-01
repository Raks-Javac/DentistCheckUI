import 'package:dentist_UI/src/schedule.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 1, left: 18),
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child:
                          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My network",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          "CHANGE",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 150,
                  child: Text(
                    "Anthem \nBlue Cross",
                    style: TextStyle(
                        letterSpacing: 2,
                        // fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      ScheduleScreen())),
                          child: buildContainer(
                            tile_decription: "Schedule &\nCleaning",
                            color: Colors.blue[200],
                            img: "assets/images/image1.png",
                            size: 120,
                          ),
                        ),
                        buildContainer(
                            tile_decription: "Learn about Proceedures",
                            color: Colors.purple.withOpacity(0.4),
                            img: "assets/images/image2.png",
                            size: 120),
                        buildContainer(
                            tile_decription: "Learn about Proceedures",
                            color: Colors.pink[200],
                            img: "assets/images/image3.png",
                            size: 120),
                        buildContainer(
                            tile_decription: "Learn about Proceedures",
                            color: Colors.white,
                            img: "assets/images/image8.png",
                            size: 120),
                      ]),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 15),
                  child: Text(
                    "My Dentist",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/image7.png",
                              )),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.3))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 94.0),
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 70,
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.3))),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.4),
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/image6.png"),
                          ),
                          title: Text("DR. BurnHam DSS"),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Family Dentist , Orthodentisthries",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      small_tiles("CALL"),
                      small_tiles("MESSAGE"),
                      small_tiles("DIRECTION"),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  small_tiles(String txt) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
        child: Center(
            child: Text(
          txt,
          style: TextStyle(fontSize: 10, color: Colors.blue),
        )),
      ),
    );
  }

  buildContainer(
      {String tile_decription, String img, Color color, double size}) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      child: Container(
        margin: EdgeInsets.only(right: 0),
        padding: EdgeInsets.all(0),
        width: 120,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Container(
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            height: 90,
            width: 110,
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          tile_decription,
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 12.5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                Transform.rotate(
                  angle: 6.5,
                  child: Image.asset(
                    img,
                    height: size,
                    width: 150,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
