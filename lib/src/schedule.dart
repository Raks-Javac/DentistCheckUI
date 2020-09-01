import 'dart:ui';

import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({Key key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: AnimatedContainer(
        duration: Duration(seconds: 10),
        child: ListView(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 180,
                  child: Container(
                      height: 250,
                      padding: EdgeInsets.only(left: 20),
                      child: Transform.rotate(
                          angle: 6.5,
                          child: Image.asset(
                            "assets/images/image1.png",
                            height: 300,
                          ))),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 10, left: 10),
                          child: Text(
                            "Schedule a\nCleaning",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, left: 0),
                              child: Row(
                                children: [
                                  buildTransit(
                                    name: "PHILLIP",
                                    box_color: Colors.blue[200],
                                    text_color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  buildTransit(
                                      name: "KIMBERLY",
                                      box_color: Colors.grey.withOpacity(0.2),
                                      text_color: Colors.black12),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            tiles_Subject("Date & Time"),
                            SizedBox(
                              height: 20,
                            ),
                            schedule_Containers(
                                context: context,
                                title: "Date",
                                subtitle: "August 21th , 2020",
                                icon: Icons.calendar_today),
                            SizedBox(
                              height: 10,
                            ),
                            schedule_Containers(
                                context: context,
                                title: "Time",
                                subtitle: "9:00AM",
                                icon: Icons.timer),
                            SizedBox(
                              height: 20,
                            ),
                            tiles_Subject("My Coverage"),
                            SizedBox(
                              height: 20,
                            ),
                            coverage_Containers(
                                context: context,
                                title: "Included",
                                subtitle: "X-ray",
                                img: "assets/images/image8.png"),
                            SizedBox(
                              height: 20,
                            ),
                            coverage_Containers(
                                context: context,
                                title: "Included",
                                subtitle: "Polishing",
                                img: "assets/images/image9.png"),
                            Flexible(
                              child: ListView(
                                children: [],
                              ),
                            )
                          ]),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue[200],
                        child: FlatButton(
                          onPressed: () => {},
                          child: Center(
                            child: Text(
                              "CONFIRM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text tiles_Subject(String subject) =>
      Text(subject, style: TextStyle(fontSize: 17));

  Container schedule_Containers(
      {BuildContext context, String title, String subtitle, IconData icon}) {
    return Container(
      height: 78,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.grey, width: 0.5)),
      margin: EdgeInsets.only(
        right: 30,
      ),
      child: Center(
        child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue.withOpacity(0.2),
            ),
            child: Icon(
              icon,
              size: 20,
              color: Colors.blue,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Container coverage_Containers(
      {BuildContext context, String title, String subtitle, String img}) {
    return Container(
      height: 78,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.grey, width: 0.5)),
      margin: EdgeInsets.only(
        right: 30,
      ),
      child: Center(
        child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue.withOpacity(0.2),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              width: 15,
              height: 15,
              child: ImageIcon(
                AssetImage(
                  img,
                ),
                size: 10.0,
                color: Colors.blue,
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Container buildTransit({
    String name,
    Color box_color,
    Color text_color,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: box_color,
          borderRadius: BorderRadius.all(Radius.circular(40))),
      width: 100,
      height: 30,
      child: Center(
          child: Text(name,
              style: TextStyle(
                  color: text_color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12))),
    );
  }
}
