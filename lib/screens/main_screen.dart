import 'package:flutter/material.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [Tab1Screen(), Tab2Screen(), Tab3Screen(), Tab4Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.directions_walk_outlined), selectedIcon: Icon(Icons.directions_walk), label: 'Pedometer'),
          NavigationDestination(icon: Icon(Icons.timeline_outlined), selectedIcon: Icon(Icons.timeline), label: 'Distance'),
          NavigationDestination(icon: Icon(Icons.local_fire_department_outlined), selectedIcon: Icon(Icons.local_fire_department), label: 'Calories'),
          NavigationDestination(icon: Icon(Icons.military_tech_outlined), selectedIcon: Icon(Icons.military_tech), label: 'Goals'),
        ],
      ),
    );
  }
}
