import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../views/login_screen.dart';
import 'drawer_item.dart';
import 'nav_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              navHeader(),
              const SizedBox(
                height: 15
                ,
              ),
              DrawerItem(
                name: 'أحصل على "Premium"',
                icon: Icons.arrow_circle_up,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, color: Colors.orange,
              ),
              const SizedBox(
                height: 15
                ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Divider(
                thickness: 0.5,
                height: 0.5,
                color: HexColor('D3D3D3'),
              ),
              ),
              const SizedBox(
                height: 15
                ,
              ),
              DrawerItem(
                name: 'مزامنة البنك',
                icon: Icons.home_outlined,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, color: Colors.blue,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'الواردات',
                icon: Icons.import_export_sharp,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, color: Colors.blue,
              ),
              const SizedBox(
                height: 15
                ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Divider(
                  thickness: 0.5,
                  height: 0.5,
                  color: HexColor('D3D3D3'),
                ),
              ),
              const SizedBox(
                height: 15
                ,
              ),
              DrawerItem(
                name: 'السجلات',
                icon: Icons.table_chart,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, color: Colors.orange,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'احصائيات',
                icon: Icons.stacked_bar_chart,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, color: Colors.teal,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'الدفعات المخطط لها',
                icon: Icons.timelapse,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, color: Colors.orange,
              ),
              const SizedBox(
                height: 15
                ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: Divider(
                  thickness: 0.5,
                  height: 0.5,
                  color: HexColor('D3D3D3'),
                ),
              ),
              const SizedBox(
                height: 15
                ,
              ),
              DrawerItem(
                name: 'الميزانيات',
                icon: Icons.web,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }, color: Colors.red.shade600,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'الديون',
                icon: Icons.money,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.red.shade600,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'الأهداف',
                icon: Icons.logout,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.teal,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'قوائم التسوق',
                icon: Icons.shopping_bag,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.lightGreen
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'الضمانات',
                icon: Icons.security,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.orange,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'بطاقات الولاء',
                icon: Icons.card_giftcard_sharp,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.red.shade600,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'أسعار العملات',
                icon: Icons.currency_bitcoin_outlined,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.blueAccent,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'مشاركة المجموعة',
                icon: Icons.group,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.green,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'أخرى',
                icon: Icons.more_horiz,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.black54
              ),
              const SizedBox(
                height: 15
                ,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Divider(
                  thickness: 0.5,
                  height: 0.5,
                  color: HexColor('D3D3D3'),
                ),
              ),
              const SizedBox(
                height: 15
                ,
              ),
              DrawerItem(
                name: 'ادع الاصدقاء',
                icon: Icons.person,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.blue
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Follow us',
                icon: Icons.favorite,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.pink,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'مساعدة',
                icon: Icons.help_outline,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.orange,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'الاعدادات',
                icon: Icons.settings,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
