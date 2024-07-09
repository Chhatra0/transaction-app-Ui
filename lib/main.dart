import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design/home.dart';
import 'package:ui_design/setting.dart';
import 'package:ui_design/wallet.dart';
import 'package:ui_design/transcation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int myCurrentIndex = 1;

  final List<Widget> _pages = [
    const HomePage(),
    const TranscationPage(),
    const WalletPage(),
    const SettingPage(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      myCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff16161b),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xff16161b)),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBody: true,
          body: _pages[myCurrentIndex],
          bottomNavigationBar: Container(
            margin: const EdgeInsets.only(bottom: 20, left: 40, right: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 2),
                child: BottomNavigationBar(
                    selectedIconTheme: const IconThemeData(size: 40),
                    iconSize: 30,
                    showSelectedLabels: false,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.grey,
                    selectedFontSize: 10,
                    currentIndex: myCurrentIndex,
                    onTap: _navigateBottomBar,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: ""),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.payments),
                        label: "",
                        backgroundColor: Color.fromARGB(196, 125, 124, 124),
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.wallet), label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: ""),
                    ]),
              ),
            ),
          ),
        ));
  }
}
