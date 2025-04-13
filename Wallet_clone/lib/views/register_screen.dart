import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.greenAccent,
                    Colors.greenAccent.shade400,
                  ],
                ),
            ),
              child: Image.asset('assets/images/security.png',
          ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          Text(".قم بالتسجيل أدناه لانشاء حساب أمن",
          style:Theme.of(context).textTheme.headline6,),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.all(12.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: MaterialButton(
              onPressed: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '"GOOGLE"  تسجيل الدخول بواسطه جوجل  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 30,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white
                    ) ,
                    child: Image.asset('assets/images/google.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: MaterialButton(
              onPressed: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    ' تسجيل الدخول بواسطه فيسبوك',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 16.0
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 30,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white
                    ) ,
                    child: Icon(Icons.facebook,
                      color: Colors.blue.shade800,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color:  Colors.greenAccent.shade700,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'تسجيل باستخدام البريد الالكترونى  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                    ),
                  ),
                 Container(
                   width: 35,
                   height: 30,
                   decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(5.0),
                     color: Colors.white
                   ) ,
                   child: Icon(Icons.email,
                     color: Colors.greenAccent.shade700,
                   ),
                 ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  'تسجيل الدخول',
                ),
              ),
              const Text(
                'هل قمت بانشاء خساب مسبقا ؟',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
