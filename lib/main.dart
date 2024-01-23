import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  // stateful widget means when user clicks sth on screen the app will notice
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('i Musician'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(Icons.gif_box_rounded)),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.newspaper_rounded), label: 'Feeds'),
          NavigationDestination(
              icon: Icon(Icons.live_tv_rounded), label: 'Live'),
          NavigationDestination(icon: Icon(Icons.chat_rounded), label: 'Chats'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Me'),
        ],
        onDestinationSelected: (int pageNumber) {
          setState(() {
            currentPage = pageNumber;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
