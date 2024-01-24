import 'package:flutter/material.dart';
import 'package:i_musician/UI/tabs/chat_page/chat_page.dart';
import 'package:i_musician/UI/tabs/feeds_pages/feeds_page.dart';
import 'package:i_musician/UI/tabs/live_page/live_page.dart';
import 'package:i_musician/UI/tabs/me_pages/me_page.dart';

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
  List<Widget> pages = [
    FeedsPage(), // 先做这个类似facebook， ins的feeds pages 熟悉基本的ui，网络请求
    LivePage(), // 再做这个直播， 1.视频直播 2.语音房间
    ChatPage(),
    MePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('i Musician'),
      ),
      body: pages[currentPage], // todo: add logIn pages
      floatingActionButton: FloatingActionButton(
          // todo: move to the middle
          onPressed: () {},
          child: Icon(Icons.gif_box_rounded)),
      bottomNavigationBar: NavigationBar(
        // todo: add custom tab bars to lower the bottom margin
        destinations: [
          NavigationDestination(icon: Icon(Icons.newspaper_rounded), label: ''),
          NavigationDestination(icon: Icon(Icons.live_tv_rounded), label: ''),
          NavigationDestination(icon: Icon(Icons.chat_rounded), label: ''),
          NavigationDestination(icon: Icon(Icons.person), label: ''),
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
