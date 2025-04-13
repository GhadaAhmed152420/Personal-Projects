import 'package:flutter/material.dart';
import 'package:wallet/views/register_screen.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/mail.png",
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "أهلا بك من جديد!",
                style: TextStyle(fontSize: 24),
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('البريد الالكترونى'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'ادخل/ي البريد الالكترونى',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('كلمه المرور'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'على الاقل ٦ أحرف ',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade400,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  'تسجيل الدخول',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: const Text(
                'هل نسيت كلمه السر؟',
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: const Text(
                    'تسجيل الاشتراك',
                  ),
                ),
                const Text(
                  'لا تملك حسابا؟',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
