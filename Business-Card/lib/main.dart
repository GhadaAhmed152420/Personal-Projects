import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff274460),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 105.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/persona.jpeg'),
              ),
            ),
            const Text(
              'Ghada Ahmed',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff7089A1),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color(0xff7089A1),
              thickness: 1.0,
              indent: 60.0,
              endIndent: 60.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.phone,
                        size: 32.0,
                        color: Color(0xff274460),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        '(+20) 1554013037',
                        style: TextStyle(fontSize: 22.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.mail,
                        size: 32.0,
                        color: Color(0xff274460),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'ga2513092@gmail.com',
                        style: TextStyle(fontSize: 22.0),
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
