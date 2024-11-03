import 'package:chat_app_ui/chat/data/view/chat_view.dart';
import 'package:chat_app_ui/search/search_view.dart';
import 'package:chat_app_ui/settings/settings_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int carentIndex = 0;
  List<Widget> pages = [
    const ChatApp(),
    const SettingsView(),
    const SearchView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[carentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          const Icon(Icons.home, size: 30, color: Colors.grey),
          const Icon(Icons.search, size: 30, color: Colors.grey),
          const Icon(Icons.settings, size: 30, color: Colors.grey),
        ],
        onTap: (index) {
          //Handle button
          setState(() {
            carentIndex = index;
          });
        },
      ),
    );
  }
}

class ChatView {}
