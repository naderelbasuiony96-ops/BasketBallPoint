import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPoints());
}

class BasketballPoints extends StatefulWidget {
  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(child: Text('Points Counter')),
        ),
        body: Column(
          children: [
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    Text('$teamAPoints', style: TextStyle(fontSize: 150)),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 400,
                  child: VerticalDivider(color: Colors.grey, thickness: 1),
                ),

                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    Text('$teamBPoints', style: TextStyle(fontSize: 150)),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
