import 'package:flutter/material.dart';

void main() {
  runApp(pointcounter());
}

class pointcounter extends StatefulWidget {
  @override
  State<pointcounter> createState() => _pointcounterState();
}

class _pointcounterState extends State<pointcounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("points counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        " $teamApoints",
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        " $teamBpoints",
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
