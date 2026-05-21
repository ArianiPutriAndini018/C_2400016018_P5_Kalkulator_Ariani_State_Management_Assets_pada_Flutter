import 'package:flutter/material.dart';

import 'pages/calculator_page.dart';
import 'pages/profile_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const PraktikumApp());
}

class PraktikumApp extends StatelessWidget {
  const PraktikumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 5',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainNavigationPage(),
    );
  }
}

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [ProfilePage(), CalculatorPage()];

  final List<String> titles = const ['Profile Card', 'Kalkulator'];

  void changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titles[selectedIndex])),
      body: pages[selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppTheme.orange,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: AppTheme.black, width: 3),
            boxShadow: [AppTheme.brutalShadow(x: 6, y: 6)],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: changePage,
              backgroundColor: AppTheme.orange,
              selectedItemColor: AppTheme.black,
              unselectedItemColor: AppTheme.black.withValues(alpha: 0.45),
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: 'Calculator',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}