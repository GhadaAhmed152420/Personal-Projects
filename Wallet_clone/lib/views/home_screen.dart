import 'package:flutter/material.dart';
import 'package:wallet/widgets/calculationsTab.dart';
import '../widgets/budgetsAndGoalsTab.dart';
import '../widgets/navigation_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          drawer: const NavigationDrawer(),
          appBar: AppBar(
           actions: [
             IconButton(
             onPressed: (){},
             icon: const Icon(Icons.notifications),
           ),
           ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.greenAccent,
                  Colors.greenAccent.shade400,
                ], begin: Alignment.bottomRight, end: Alignment.topLeft),
              ),
            ),
            title: const Text('الصفحة الرئيسة'),
            elevation: 4,
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              tabs: [
                Tab(text: 'الحسابات'),
                Tab(text: 'BUDGETS & GOALS'),
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: TabBarView(
                  children: [calculationsTab(), budgetsAndGoalsTab()],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
            },
            // backgroundColor: Colors.blue,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
