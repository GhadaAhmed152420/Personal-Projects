import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA_point_counter = 0;
  int teamB_point_counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basketball Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamA_point_counter',
                        style: const TextStyle(fontSize: 150),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamA_point_counter++;
                              });
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamA_point_counter += 2;
                              });
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamA_point_counter += 3;
                              });
                            },
                            child: const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 440,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamB_point_counter',
                        style: const TextStyle(fontSize: 150),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamB_point_counter++;
                              });
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamB_point_counter += 2;
                              });
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamB_point_counter += 3;
                              });
                            },
                            child: const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamA_point_counter = 0;
                        teamB_point_counter = 0;
                      });
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
