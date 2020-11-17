import 'package:flutter/material.dart';
import 'package:walkie_test02/heiper/Colorsys.dart';

class SingleUser extends StatefulWidget {
  @override
  _SingleUserState createState() => _SingleUserState();
}

class _SingleUserState extends State<SingleUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorsys.lightGrey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: BackButton(
            onPressed: () {},
            color: Colorsys.grey,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                size: 25,
                color: Colorsys.grey,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                color: Colors.white),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/pics/normal01.jpg'),
                  maxRadius: 40,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "seong il",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "@inha_programmer",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    makeFollowWidgets(count: 237, name: "Followers"),
                    Container(
                      width: 2,
                      height: 15,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      color: Colorsys.lightGrey,
                    ),
                    makeFollowWidgets(count: 145, name: "Following"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                makeActionButtons()
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                        )
                      )
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
          )
        ])));
  }

  Widget makeFollowWidgets({count, name}) {
    return Row(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colorsys.black),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 15, color: Colorsys.darkGrey),
        )
      ],
    );
  }

  Widget makeActionButtons() {
    return Transform.translate(
      offset: Offset(0, 20),
      child: Container(
          height: 65,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 20,
                    offset: Offset(0, 10))
              ]),
          child: Row(
            children: [
              Expanded(
                  child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                height: double.infinity,
                elevation: 0,
                onPressed: () {},
                color: Colorsys.orange,
                child: Text(
                  "Follow",
                  style: TextStyle(color: Colors.white),
                ),
              )),
              Expanded(
                  child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                height: double.infinity,
                elevation: 0,
                onPressed: () {},
                color: Colorsys.orange,
                child: Text(
                  "Follow",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ))
            ],
          )),
    );
  }
}
